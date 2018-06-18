#include "Ft1248.h"

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
    FtOutputByte(FtCmd);
    FtPullData();
}

static void FtActivateInterface_Implementation(void)
{}

void (*FtActivateInterface)(void) = FtActivateInterface_Implementation;

static void FtPushData_Implementation(void)
{}

void (*FtPushData)(void) = FtPushData_Implementation;

static void FtOutputByte_Implementation(uint8_t FtCmd)
{}

void (*FtOutputByte)(uint8_t) = FtOutputByte_Implementation;

static void FtPullData_Implementation(void)
{}

void (*FtPullData)(void) = FtPullData_Implementation;