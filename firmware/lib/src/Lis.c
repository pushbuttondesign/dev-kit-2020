#include "Lis.h"
// ---Private---
void Pin_LisPixSelect_SetOutput(void);
void LisPixSelectIdleLow(void);
void Pin_LisClk_SetOutput(void);
void Pin_LisRst_SetOutput(void);
void LisRstIdleLowAfterPowerUp(void);
void Pin_LisSync_SetInput(void);
void ResetPwmTimerAtTop(void);
void PwmTimerTopIsOCR0A(void);
void PwmTimerClockedByCpu_NoPrescaling(void);
void LisClkFreq50kHz(void);
void LisClkOn(void);
void _ConfigAs28bits(uint8_t *config);
// ---API---
void LisInit(void);
bool LisConfigIsValid(void);
void LisWriteConfig(void);
