#ifndef _ringbuffer_h_
#define _ringbuffer_h_

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include "macro.h"

#define RINGBUFFER_SIZE 256

#define RINGBUFFER_FULL(px) ((px->put + 1) % ARRAY_LENGTH(px->buffer) == px->take)
#define RINGBUFFER_EMPTY(px) (px->put == px->take)

typedef struct {
  size_t put;
  size_t take;
  int16_t buffer[RINGBUFFER_SIZE];
} ring_buffer_t;

/**
 * Returns the number of elements currently in the ring buffer.
 * @param buf Ringbuffer pointer
 * @return Number of elements in the buffer.
 */
size_t ringbuffer_size(ring_buffer_t*p_buf);

/**
 * Appends a value to the ringbuffer.
 * @param p_buf Ringbuffer pointer
 * @param value Value to append.
 * @return True if buffer was not full.
 */
bool ringbuffer_put(ring_buffer_t*p_buf, const int16_t value);

/**
 * Returns a value from the ringbuffer.
 * @param p_buf Ringbuffer pointer.
 * @param p_value Pointer to value to write.
 * @return True if buffer was not empty, and p_value was valid pointer.
 */
bool ringbuffer_take(ring_buffer_t*p_buf, int16_t *p_value);

#endif // _ringbuffer_h_
