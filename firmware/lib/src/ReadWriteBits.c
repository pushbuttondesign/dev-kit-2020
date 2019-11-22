#include "ReadWriteBits.h"

/* Declare inline functions here to emit symbols in this translation unit. */
/* Use typedefs to make this easier to read. */
typedef void (WriteBits)(uint8_t volatile * const port, uint8_t const bit);
WriteBits _SetBit;
WriteBits _ClearBit;
WriteBits _ToggleBit;
