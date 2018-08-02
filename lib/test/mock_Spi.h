#ifndef _MOCK_SPI_H
#define _MOCK_SPI_H

#include <stdbool.h>

void Expect_SpiMasterOpenSpi(void);
void SpiMasterOpenSpi_Stubbed(void);

void Expect_SpiMasterCloseSpi(void);
void SpiMasterCloseSpi_Stubbed(void);

void Expect_SpiTransferIsDone(void);
bool SpiTransferIsDone_Stubbed(void);
extern bool *SpiTransferIsDone_StubbedReturnValue;

void Expect_SpiResponseIsReady(void);
bool SpiResponseIsReady_Stubbed(void);
extern bool *SpiResponseIsReady_StubbedReturnValue;

#endif // _MOCK_SPI_H
