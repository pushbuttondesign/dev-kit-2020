#ifndef _TEST_SPI_MOCKUPS_H
#define _TEST_SPI_MOCKUPS_H

void SetUpMock_SpiMasterWrite(void); void TearDownMock_SpiMasterWrite(void);
void SetUpMock_SpiMasterRead(void); void TearDownMock_SpiMasterRead(void);
void SetUpMock_SpiSlaveRead(void); void TearDownMock_SpiSlaveRead(void);
void SetUpMock_SpiMasterWaitForResponse(void);
void TearDownMock_SpiMasterWaitForResponse(void);
void SetUpMock_ClearPendingSpiInterrupt(void);
void TearDownMock_ClearPendingSpiInterrupt(void);
void SetUpMock_SpiMasterInit(void);
void TearDownMock_SpiMasterInit(void);

#endif // _TEST_SPI_MOCKUPS_H
