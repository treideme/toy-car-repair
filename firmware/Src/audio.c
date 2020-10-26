#include "audio.h"
#include <stdio.h>

bool audio_playfile(audio_t *state, const char*fname) {
  audio_stop(state); // Stop playing if we were playing
  FRESULT res = f_open(&state->current_file, fname, FA_READ);
  if(res != FR_OK) {
    printf("Could not open %s cause %i\r\n", fname, res);
    return false;
  }

  riff_header_t header = {0};
  size_t sz = 0;
  res = f_read(&state->current_file, &header, sizeof(riff_header_t), &sz);
  if(res != FR_OK) {
    audio_stop(state);
    printf("Could not read header\r\n");
    return false;
  }

  // Sanity check header
  if((header.NumChannels != 1) || (header.BitsPerSample != 16) || (header.SampleRate != 16000)) {
    printf("CH = %i BPS = %i Rate = %lu\r\n", header.NumChannels, header.BitsPerSample, header.SampleRate);
    audio_stop(state);
    return false;
  }
  state->playing = true;

  return true;
}

void audio_stop(audio_t *state) {
  if(state->playing) {
    f_close(&state->current_file);
    state->playing = false;
  }
  return;
}

void audio_update(audio_t*state, const IRQn_Type dac_update_irq) {
  if(state->playing) {

    // Critical section, disable DAC IRQ
    HAL_NVIC_DisableIRQ(dac_update_irq);
    {
      const size_t available = RINGBUFFER_SIZE - ringbuffer_size(&state->buffer) - 1;
//      printf("Update %i\r\n", available);
      if(available > 128) {
        size_t rsize = 0;
        FRESULT res = f_read(&state->current_file, state->io_buffer, available*2, &rsize); // *2 16-bit samples
        if((res != FR_OK) || (rsize == 0)) {
          audio_stop(state);
//          printf("Read stoped %u %u", rsize, res);
        } else {
          for(size_t i = 0; i < rsize/2; i++) {
            ringbuffer_put(&state->buffer, state->io_buffer[i]);
//            printf("PUT: 0x%03X from %li %i\r\n", pvalue, value, res);
          }
        }
      }
    }
    HAL_NVIC_EnableIRQ(dac_update_irq);
  }
}

uint16_t audio_next_12b(audio_t *state) {
  uint16_t value = 0x8000;
  if(state->playing) {
    int16_t svalue;
    if(ringbuffer_take(&state->buffer, &svalue)) {
      value = (int32_t)(svalue + 0x8000);
    }
//    printf("Playing: 0x%03X\r\n", value);
//  } else {
//    printf("Not playing\r\n");
  }
  return value >> (16-12);
}

