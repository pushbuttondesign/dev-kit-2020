/** \file */
#include "Queue.h"
// Define Queue and allocate static memory.
volatile Queue_s Queue;
// ---API---
volatile Queue_s * QueueInit(
    volatile uint8_t * buffer, // SPI FIFO Rx Buffer
    uint16_t const buffer_size_in_bytes // Max length of Spi Rx Queue
    );
uint16_t QueueLength(volatile Queue_s * pq);
bool QueueIsFull(volatile Queue_s * SpiFifo);
bool QueueIsEmpty(volatile Queue_s * SpiFifo);
void QueuePush(volatile Queue_s * SpiFifo, uint8_t data_to_push);
uint8_t QueuePop(volatile Queue_s * SpiFifo);
