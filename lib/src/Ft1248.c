#include "Ft1248.h"
#include "ReadWriteBits.h"

//=====[ Ft1248: FtSendCommand ]=====
//-----------------------------------
// 8-bit Bus Width R/W
//#define FT1248_CMD_WRITE8   0x86
//#define FT1248_CMD_READ8    0xC6
//static uint8_t const FT1248Cmd_8BitWide_Write = 0x86;

uint8_t const FtCmd_Read  = 0xC6;
void FtSendCommand(uint8_t FtCmd)
{
    FtActivateInterface();
    FtPushData();
    FtLetMasterDriveBus();
    FtOutputByte(FtCmd);
    FtPullData();
}

void FtBusTurnaround(void)
{
    FtLetSlaveDriveBus();
    FtPushData();
    FtPullData();
    FtIsBusOk();
}

void FtRead(void)
{
    FtPushData();
    FtPullData();
    FtIsBusOk();
    FtReadData();
}

static void FtActivateInterface_Implementation(void)
{
    ClearBit(Ft1248_port, Ft1248_Ss);
}

void (*FtActivateInterface)(void) = FtActivateInterface_Implementation;

void FtDeactivateInterface(void)
{
    SetBit(Ft1248_port, Ft1248_Ss);
}

static void FtPushData_Implementation(void)
{
    SetBit(Ft1248_port, Ft1248_Sck);
}

void (*FtPushData)(void) = FtPushData_Implementation;

static void FtOutputByte_Implementation(uint8_t FtCmd)
{
    *FtMiosio_port = FtCmd;
}

void (*FtOutputByte)(uint8_t) = FtOutputByte_Implementation;

static void FtPullData_Implementation(void)
{
    ClearBit(Ft1248_port, Ft1248_Sck);
}

void (*FtPullData)(void) = FtPullData_Implementation;

static void FtLetMasterDriveBus_Implementation(void)
{
    *FtMiosio_ddr = 0xFF;
}

void (*FtLetMasterDriveBus)(void) = FtLetMasterDriveBus_Implementation;

static void FtLetSlaveDriveBus_Implementation(void)
{
    *FtMiosio_ddr = 0x00;
}

void (*FtLetSlaveDriveBus)(void) = FtLetSlaveDriveBus_Implementation;

static bool FtIsBusOk_Implementation(void)
{
    return BitIsClear(Ft1248_pin, Ft1248_Miso);
}

bool (*FtIsBusOk)(void) = FtIsBusOk_Implementation;
bool (*FtHasDataToRead)(void) = FtIsBusOk_Implementation;

static uint8_t FtReadData_Implementation(void)
{
    return *FtMiosio_pin;
}

uint8_t (*FtReadData)(void) = FtReadData_Implementation;

