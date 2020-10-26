#ifndef _audio_h_
#define _audio_h_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

#include "ringbuffer.h"
#include "ff.h"
#include "main.h"

#define AUDIO_BUSY(h) ((h)->playing)

/**
 * RIFF header structure for checking WAV files.
 */
typedef struct {
  uint32_t ChunkID;
  uint32_t ChunkSize;
  uint32_t Format;
  uint32_t Subchunk1ID;
  uint32_t Subchunk1Size;
  uint16_t AudioFormat;
  uint16_t NumChannels;
  uint32_t SampleRate;
  uint32_t ByteRate;
  uint16_t BlockAlign;
  uint16_t BitsPerSample;
  uint32_t Subchunk2ID;
  uint32_t Subchunk2Size;
} riff_header_t;

/**
 * State of file-based player.
 */
typedef struct {
  FIL current_file;
  volatile bool playing;

  ring_buffer_t buffer;
  int16_t io_buffer[RINGBUFFER_SIZE];
} audio_t;

/**
 * Start playing a new audio file.
 * @param state Handle to audio player.
 * @param fname Name of file to play.
 * @return true if successful
 */
bool audio_playfile(audio_t *state, const char*fname);

/**
 * Stop playing audio.
 * @param state Handle to audio player.
 */
void audio_stop(audio_t *state);

/**
 * Update state of audio player.
 * @param state Handle to audio player
 * @param dac_update_irq What irq is used to update DAC values.
 */
void audio_update(audio_t*state, const IRQn_Type dac_update_irq);

/**
 * Use this in the DAC interrupt service routine to get the next value.
 * @param state Handle to audio player
 * @return 12-bit value for the next value to give to DAC.
 */
uint16_t audio_next_12b(audio_t *state);

#endif // _audio_h_
