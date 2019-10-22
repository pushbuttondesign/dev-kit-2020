/** \file */
#ifndef _SENSORVIS_H
#define _SENSORVIS_H

#include <stdint.h>     // uint8_t
#include <stdbool.h>    // bool, true, false

/* TODO: this is duplicated in Bridge.h. Consolidate into one file used by both. */
typedef uint8_t const status_byte;  // TODO: move this to a shared lib
status_byte ok;
status_byte error;
status_byte led_off;
status_byte led_green;
status_byte led_red;
typedef uint8_t const led_name;  // TODO: move this to a shared lib
led_name led_0;
led_name led_1;

extern uint16_t (*ReadSpiMaster)(uint8_t *read_buffer, uint16_t nbytes);
extern uint16_t (*WriteSpiMaster)(uint8_t const *write_buffer, uint16_t nbytes);

/* --------------------------------------------------------------------------------------- */
/* TODO: Extract the useful SpiSlave stuff */
/* --------------------------------------------------------------------------------------- */
/* | 2019-03-03 WIP: New SpiSlave API functionality for robust multi-byte communication. | */
/* --------------------------------------------------------------------------------------- */
/* =====[ SPI Slave API ]===== */
/* Functions of type `SensorCmd` take nothing and return nothing. */
/* The *key* acts as the command since it is the command lookup. */
/* If the commands need additional parameters, they will read additional bytes. */
/* All functions in the lookup table must have the same signature, so commands that */
/* take return functions other than void-void need to go in a different jump table. */
typedef void (SensorCmd)(void);
/* Give tests of LookupSensorCmd access to names of functions in */
/* jump table to compare pointer values. */
/* SensorCmd SensorLed1Red; */
/* SensorCmd SensorLed1Green; */
/* SensorCmd SensorLed2Red; */
/* SensorCmd SensorLed2Green; */
/* This is the datatype to use when calling LookupSensorCmd: */
typedef uint8_t sensor_cmd_key;  // jump-table dictionary uses 8-bit keys

/* Declare keys for callers of LookupCmd (values hidden in .c file) */
/* extern sensor_cmd_key const SensorLed1Red_key; */
/* extern sensor_cmd_key const SensorLed1Green_key; */
/* extern sensor_cmd_key const SensorLed2Red_key; */
/* extern sensor_cmd_key const SensorLed2Green_key; */
extern sensor_cmd_key const SensorCfgLis_key;
/* LookupSensorCmd takes key from SpiMaster and returns the function pointer to call. */
SensorCmd* LookupSensorCmd(sensor_cmd_key const key);
/* report status to SpiMaster */
void SpiSlaveWrite_StatusOk(sensor_cmd_key valid_cmd);
// Do not use this. Use ReplyCommandInvalid() instead.
void SpiSlaveWrite_StatusInvalid(sensor_cmd_key invalid_cmd);
// SpiSlaveWrite_StatusError
/* =====[ API to communicate ]===== */
// SpiSlaveRead_OneByte
/* --------------------------------------------------------------------------------------- */
sensor_cmd_key const GetSensorLED_key;

void ReplyCommandInvalid(void);
void GetSensorLED(void);
void LedsShowError(void);

/* =====[ SPI Flags and Data Register Buffer ]===== */
// typedef eliminates need to declare a Queue with `struct` keyword.
typedef struct Queue_s Queue_s; // Queue_s defined in SensorVis.c.
// Declare global SPI FIFO Rx Buffer (memory allocated in .c).
extern volatile uint8_t spi_rx_buffer[];
// Access SPI FIFO Rx Buffer through a Queue ptr (definition and mem alloc in .c ).
extern volatile Queue_s * SpiFifo;
// Old:
// global one-byte register to store SpiData
volatile uint8_t SpiData; // ISR copies SPI data register to SpiData
// global flag to track when a new byte is in SpiData
volatile bool HasSpiData; // ISR sets true. Set false after consuming SpiData.
void QueueInit(volatile Queue_s * SpiFifo, volatile uint8_t * spi_rx_buffer);
uint16_t QueueLength(volatile Queue_s * pq);
void QueuePush(volatile Queue_s * SpiFifo, uint8_t data_to_push);
bool QueueIsFull(volatile Queue_s * SpiFifo);
bool QueueIsEmpty(volatile Queue_s * SpiFifo);
uint8_t QueuePop(volatile Queue_s * SpiFifo);

#endif // _SENSORVIS_H
