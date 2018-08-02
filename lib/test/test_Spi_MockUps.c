#include "Spi.h"
#include "mock_Spi.h"
#include <Mock.h>
#include "test_Spi_MockUps.h"

static void (*SpiMasterOpenSpi_Saved)(void);
static void Stub_SpiMasterOpenSpi(void) {
    SpiMasterOpenSpi_Saved = SpiMasterOpenSpi;
    SpiMasterOpenSpi = SpiMasterOpenSpi_Stubbed;
}
static void Unstub_SpiMasterOpenSpi(void) {
    SpiMasterOpenSpi = SpiMasterOpenSpi_Saved;
}
static void (*SpiMasterCloseSpi_Saved)(void);
static void Stub_SpiMasterCloseSpi(void) {
    SpiMasterCloseSpi_Saved = SpiMasterCloseSpi;
    SpiMasterCloseSpi = SpiMasterCloseSpi_Stubbed;
}
static void Unstub_SpiMasterCloseSpi(void) {
    SpiMasterCloseSpi = SpiMasterCloseSpi_Saved;
}
static bool (*SpiTransferIsDone_Saved)(void);
static void Stub_SpiTransferIsDone(void) {
    SpiTransferIsDone_Saved = SpiTransferIsDone;
    SpiTransferIsDone = SpiTransferIsDone_Stubbed;
}
static void Unstub_SpiTransferIsDone(void) {
    SpiTransferIsDone = SpiTransferIsDone_Saved;
}
void SetUpMock_SpiMasterWrite(void)  // FUT
{
    mock = Mock_new();
    //
    Stub_SpiMasterOpenSpi();  // DOF
    Stub_SpiMasterCloseSpi();  // DOF
    Stub_SpiTransferIsDone();  // DOF
}
void TearDownMock_SpiMasterWrite(void)  // FUT
{
    Mock_destroy(mock); mock = NULL;
    //
    Unstub_SpiMasterOpenSpi();  // DOF
    Unstub_SpiMasterCloseSpi();  // DOF
    Unstub_SpiTransferIsDone();  // DOF
}
void SetUpMock_SpiSlaveRead(void)  // FUT
{
    mock = Mock_new();
    //
    Stub_SpiTransferIsDone();  // DOF
}
void TearDownMock_SpiSlaveRead(void)  // FUT
{
    Mock_destroy(mock); mock = NULL;
    //
    Unstub_SpiTransferIsDone();  // DOF
}

static bool (*SpiResponseIsReady_Saved)(void);
static void Stub_SpiResponseIsReady(void) {
    SpiResponseIsReady_Saved = SpiResponseIsReady;
    SpiResponseIsReady = SpiResponseIsReady_Stubbed;
}
static void Unstub_SpiResponseIsReady(void) {
    SpiResponseIsReady = SpiResponseIsReady_Saved;
}
void SetUpMock_SpiMasterWaitForResponse(void)  // FUT
{
    mock = Mock_new();
    //
    Stub_SpiResponseIsReady();  // DOF
}
void TearDownMock_SpiMasterWaitForResponse(void)  // FUT
{
    Mock_destroy(mock); mock = NULL;
    //
    Unstub_SpiResponseIsReady();  // DOF
}

