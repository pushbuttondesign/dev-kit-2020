#include "unity.h"
#include "test_Queue.h"
#include "Queue.h"
// ---Queue tests are coupled---
// Testing one Queue method requires calling other Queue methods.
// Data in a queue_s is only accessible through the Queue methods
// because Queue is an abstract data type.
// ---Queue tests are empty---
// Empty tests are for generating function doc strings.
// Tests start as empty. If the test is useful, write it using the
// necessary Queue methods when they are availalbe.

// ---Queue memory---
// Allocate static memory for the queue object
volatile Queue_s * SpiFifo;
// Define maximum size (bytes) of the queue's buffer
#define max_length_of_queue 5 // bytes
// Memory for the buffer (spi_rx_buffer) is allocated on the stack
// (it is local to each test). This eliminates the need for
// buffer setup/teardown code.

void QueueInit_returns_a_pointer_to_a_Queue_struct(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    /* =====[ Operate and Test ]===== */
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    TEST_PASS();
}
void QueueInit_memory_for_Queue_struct_is_allocated_in_Queue_object_file(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    /* =====[ Operate and Test ]===== */
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    /* printf( */
    /*     "QueueInit accesses memory allocated " */
    /*     "for Queue object in Queue.o\n" */
    /*     ); */
    TEST_PASS();
}
void QueueInit_assigns_input_buffer_as_Queue_buffer(void)
{ TEST_PASS(); }
void QueueInit_size_input_is_the_maximum_Queue_length(void)
{ TEST_PASS(); }
void QueueInit_initializes_Queue_with_length_0(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    /* =====[ Operate ]===== */
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    /* =====[ Test ]===== */
    TEST_ASSERT_EQUAL_UINT16(0, QueueLength(SpiFifo));
}
void QueueLength_increments_after_a_push(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    /* =====[ Operate ]===== */
    QueuePush(SpiFifo, 0xAB);
    /* =====[ Test ]===== */
    TEST_ASSERT_EQUAL_UINT16(1, QueueLength(SpiFifo));
}
void QueueLength_does_not_increase_beyond_max_length(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    // Fill the queue
    uint8_t bytes_pushed=0;
    while(bytes_pushed < max_length_of_queue)
    {
        QueuePush(SpiFifo, 0xCD);
        bytes_pushed++;
    }
    // Assert the Length is at its max value.
    TEST_ASSERT_EQUAL_UINT16(max_length_of_queue, QueueLength(SpiFifo));
    /* =====[ Operate ]===== */
    // Try another push.
    QueuePush(SpiFifo, 0xEF);
    /* =====[ Test ]===== */
    // Assert the Length is still at its max value.
    TEST_ASSERT_EQUAL_UINT16(max_length_of_queue, QueueLength(SpiFifo));
}
void QueueLength_decrements_after_a_pop(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    // Fill the queue
    QueuePush(SpiFifo, 0xAB);
    QueuePush(SpiFifo, 0xCD);
    // Assert queue length is 2
    TEST_ASSERT_EQUAL_UINT16(2, QueueLength(SpiFifo));
    /* =====[ Operate ]===== */
    QueuePop(SpiFifo);
    // Assert queue length decrements after pop
    TEST_ASSERT_EQUAL_UINT16(1, QueueLength(SpiFifo));
}
void QueueLength_does_not_decrease_below_zero(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    // Fill the queue
    QueuePush(SpiFifo, 0xAB);
    QueuePush(SpiFifo, 0xCD);
    // Assert Queue length is 2
    TEST_ASSERT_EQUAL_UINT16(2, QueueLength(SpiFifo));
    /* =====[ Operate ]===== */
    QueuePop(SpiFifo);
    QueuePop(SpiFifo);
    // Assert Queue length is 0
    TEST_ASSERT_EQUAL_UINT16(0, QueueLength(SpiFifo));
    QueuePop(SpiFifo);
    /* =====[ Test ]===== */
    // Assert Queue length is still 0
    TEST_ASSERT_EQUAL_UINT16(0, QueueLength(SpiFifo));
}
void QueuePush_writes_byte_to_Queue_buffer(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    /* =====[ Operate ]===== */
    QueuePush(SpiFifo, 0xAB);
    /* =====[ Test ]===== */
    TEST_ASSERT_EQUAL_UINT8(0xAB, spi_rx_buffer[0]);
}
void QueuePush_writes_next_byte_to_address_after_previous_write(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    /* =====[ Operate ]===== */
    QueuePush(SpiFifo, 0xAB);
    QueuePush(SpiFifo, 0xCD);
    TEST_ASSERT_EQUAL_UINT8(0xAB, spi_rx_buffer[0]);
    TEST_ASSERT_EQUAL_UINT8(0xCD, spi_rx_buffer[1]);
}
void QueuePush_does_not_write_byte_if_Queue_is_full(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    // Fill the queue
    uint8_t bytes_pushed=0;
    while(bytes_pushed < max_length_of_queue)
    {
        QueuePush(SpiFifo, 0xCD);
        bytes_pushed++;
    }
    // Assert the Length is at its max value.
    TEST_ASSERT_EQUAL_UINT16(max_length_of_queue, QueueLength(SpiFifo));
    /* =====[ Operate ]===== */
    // Try another push.
    QueuePush(SpiFifo, 0xEF);
    /* =====[ Test ]===== */
    // Assert no values were overwritten.
    bytes_pushed=0;
    while(bytes_pushed < max_length_of_queue)
    {
        TEST_ASSERT_EQUAL_UINT8(0xCD, spi_rx_buffer[0]);
        bytes_pushed++;
    }
}
void QueuePush_hits_end_of_buffer_and_wraps_around_if_Queue_is_not_full(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    // Fill the queue
    uint8_t bytes_pushed=0;
    while(bytes_pushed < max_length_of_queue)
    {
        QueuePush(SpiFifo, 0xCD);
        bytes_pushed++;
    }
    // Assert the Queue is full
    TEST_ASSERT_TRUE(QueueIsFull(SpiFifo));
    // Assert the head is pointing at the last byte index in the Queue.
    TEST_ASSERT_EQUAL_UINT16(max_length_of_queue, QueueLength(SpiFifo));
    // Empty the queue
    uint8_t bytes_popped=0;
    while(bytes_popped < max_length_of_queue)
    {
        QueuePop(SpiFifo);
        bytes_popped++;
    }
    // Assert the Queue is empty.
    TEST_ASSERT_TRUE(QueueIsEmpty(SpiFifo));
    /* =====[ Operate ]===== */
    // Put more data on the Queue. `head` should wrap around.
    QueuePush(SpiFifo, 33);
    /* =====[ Test ]===== */
    TEST_ASSERT_EQUAL_MESSAGE(
        33, spi_rx_buffer[0],
        "Failed to overwrite byte 0! "
        "Head should wrap around when it reaches the end of the array."
        );
}
void QueuePop_reads_oldest_byte_in_Queue(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    // Fill the queue
    QueuePush(SpiFifo, 0xAB);
    QueuePush(SpiFifo, 0xCD);
    /* =====[ Operate ]===== */
    uint8_t byte_0 = QueuePop(SpiFifo);
    /* =====[ Test ]===== */
    TEST_ASSERT_EQUAL_UINT8(0xAB, byte_0);
}
void QueuePop_removes_oldest_byte_from_Queue(void)
{
    /* =====[ Setup ]===== */
    volatile uint8_t spi_rx_buffer[max_length_of_queue];
    SpiFifo = QueueInit(spi_rx_buffer, max_length_of_queue);
    // Fill the queue
    QueuePush(SpiFifo, 0xAB); // oldest byte in Queue
    QueuePush(SpiFifo, 0xCD); // next-oldest byte in Queue
    /* =====[ Operate ]===== */
    uint8_t byte_0 = QueuePop(SpiFifo);
    /* =====[ Test ]===== */
    // Assert the oldest byte is read.
    TEST_ASSERT_EQUAL_UINT8(0xAB, byte_0);
    /* =====[ Operate ]===== */
    uint8_t byte_1 = QueuePop(SpiFifo);
    /* =====[ Test ]===== */
    // Assert the next-oldest byte is read.
    // This implies the oldest byte was removed on the previous pop.
    TEST_ASSERT_EQUAL_UINT8(0xCD, byte_1);
}
