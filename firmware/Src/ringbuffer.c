#include "ringbuffer.h"
#include <stdio.h>

size_t ringbuffer_size(ring_buffer_t*p_buf) {
  if(p_buf->take <= p_buf->put) {
    return p_buf->put - p_buf->take;
  } else {
    return p_buf->put + ARRAY_LENGTH(p_buf->buffer) - p_buf->take;
  }
}

bool ringbuffer_put(ring_buffer_t*p_buf, const int16_t value) {
  if(!RINGBUFFER_FULL(p_buf)) {
    p_buf->buffer[p_buf->put] = value;
    p_buf->put++;
    p_buf->put = (p_buf->put) % ARRAY_LENGTH(p_buf->buffer);
    return true;
  }
  return false;
}

bool ringbuffer_take(ring_buffer_t*p_buf, int16_t *p_value) {
  if(!RINGBUFFER_EMPTY(p_buf) && (p_value != NULL)) {
    int16_t value = p_buf->buffer[p_buf->take];
    p_buf->take++;
    p_buf->take = (p_buf->take) % ARRAY_LENGTH(p_buf->buffer);
//    printf("Take: 0x%03X\r\n", value);
    *p_value = value;
    return true;
  }
  return false;
}
