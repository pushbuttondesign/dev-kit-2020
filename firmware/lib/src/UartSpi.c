#include "UartSpi.h"
// ---Private---
void RunSpiAt5Mhz(void);
void SetSckAsOutput(void);
void AdcConvIdleLow(void);
void SetAdcConvAsOutput(void);
void EnableAtmega328UsartInSpiMasterMode(void);
void UseSpiDataModeCpol1CPha1(void);
void CfgSpiToTransferMsbFirst(void);
void GiveSpiControlOverMisoAndMosiPins(void);
void SpiMasterCfg(void);
// ---API---
void UartSpiInit(void);
void StartAdcConversion(void);
void StartAdcReadout(void);

