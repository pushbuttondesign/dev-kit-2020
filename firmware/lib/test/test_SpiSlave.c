#include "unity.h"
#include "test_SpiSlave.h"
#include "SpiSlave.h"
#include "Mock.h" // record call history in "mock"

void SpiSlaveInit_makes_DataReady_an_output_pin(void)
{
    /* =====[ Setup ]===== */
    *Spi_ddr = 0x00;
    TEST_ASSERT_BIT_LOW_MESSAGE(
        Spi_DataReady,
        *Spi_ddr,
        "Cannot run test: must start with ddr bit clear!"
        );
    /* =====[ Operate ]===== */
    SpiSlaveInit();
    /* =====[ Test ]===== */
    TEST_ASSERT_BIT_HIGH_MESSAGE(
        Spi_DataReady,
        *Spi_ddr,
        "Expect DataReady to be an output."
        );
}
void SpiSlaveInit_idles_DataReady_high(void)
{
    /* =====[ Setup ]===== */
    *Spi_port = 0x00;
    TEST_ASSERT_BIT_LOW_MESSAGE(
        Spi_DataReady,
        *Spi_port,
        "Cannot run test: must start with port bit clear!"
        );
    /* =====[ Operate ]===== */
    /* printf("Value of Spi_port before is 0x%02x\n", *Spi_port); */
    SpiSlaveInit();
    /* =====[ Test ]===== */
    /* printf("Value of Spi_DataReady is pin %d\n", Spi_DataReady); */
    /* printf("Value of Spi_port after is 0x%02x\n", *Spi_port); */
    TEST_ASSERT_BIT_HIGH_MESSAGE(
        Spi_DataReady,
        *Spi_port,
        "Expect DataReady to idle high."
        );
}
void SpiSlaveInit_makes_Miso_an_output_pin(void)
{
    /* =====[ Setup ]===== */
    *Spi_ddr = 0x00;
    TEST_ASSERT_BIT_LOW_MESSAGE(
        Spi_Miso,
        *Spi_ddr,
        "Cannot run test: must start with ddr bit clear!"
        );
    /* =====[ Operate ]===== */
    SpiSlaveInit();
    /* =====[ Test ]===== */
    TEST_ASSERT_BIT_HIGH_MESSAGE(
        Spi_Miso,
        *Spi_ddr,
        "Expect Miso to be an output."
        );
}
void SpiSlaveInit_enables_SPI(void)
{
    /* =====[ Setup ]===== */
    *Spi_spcr = 0x00;
    TEST_ASSERT_BIT_LOW_MESSAGE(
        Spi_Enable,
        *Spi_spcr,
        "Cannot run test: must start with bit clear!"
        );
    /* =====[ Operate ]===== */
    SpiSlaveInit();
    /* =====[ Test ]===== */
    TEST_ASSERT_BIT_HIGH_MESSAGE(
        Spi_Enable,
        *Spi_spcr,
        "Expect bit 6 HIGH to enable SPI module."
        );
}
void SpiSlaveInit_enables_SPI_interrupt(void)
{
    /* =====[ Operate ]===== */
    SpiSlaveInit();
    /* =====[ Test ]===== */
    /* PrintAllCalls(mock); */
    // check SpiSlaveInit calls `EnableSpiInterrupt`
    uint16_t call_n = 1;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertCall(mock, call_n, "EnableSpiInterrupt"),
        "Expect SpiSlaveInit enables the SPI interrupt."
        );
}
