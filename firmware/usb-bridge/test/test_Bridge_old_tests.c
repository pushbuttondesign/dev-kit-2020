// test_runner
setUp = SetUp_Stub_UsbReadN_with_value_in_read_buffer;
tearDown = TearDown_Stub_UsbReadN_with_value_in_read_buffer;
RUN_TEST(Stub_UsbReadN_with_value_in_read_buffer);

void UsbCmdParser_JumpTableSandbox(bool run_test) {if (run_test) {
    setUp = NothingToSetUp; tearDown = NothingToTearDown;
    RUN_TEST(LookupBridgeCmd_example_calling_the_command);
    RUN_TEST(LookupBridgeCmd_example_storing_the_returned_pointer);
    RUN_TEST(UsbWriteStatusOk_tells_UsbHost_command_was_success);
    RUN_TEST(UsbWriteStatusInvalid_sends_error_byte_and_echoes_invalid_command);
    RUN_TEST(UsbWriteStatusBadArgs_sends_error_byte_and_echoes_invalid_command);
    RUN_TEST(UsbWriteStatusMissingArgs_sends_error_byte_and_echoes_invalid_command);
    RUN_TEST(UsbWriteStatusSpiBusError_sends_error_byte_and_slave_cmd);

    RUN_TEST(LookupBridgeCmd_sad_example_using_UsbWriteStatus_API);
    RUN_TEST(LookupBridgeCmd_happy_example_using_UsbWriteStatus_API);
    RUN_TEST(CmdCfgLis_returns_StatusOk_and_echoes_back_the_4_cfg_bytes);
    RUN_TEST(CfgTurnsOffAllPixels_returns_true_if_cfg_turns_off_all_pixels);
    RUN_TEST(CfgTurnsOffAllPixels_ignores_the_3LSB_and_4MSB_of_cfg);
    RUN_TEST(CfgTurnsOffAllPixels_returns_false_if_any_pixels_are_on);
    RUN_TEST(XOR_returns_true_if_a_is_true_and_b_is_false);
    RUN_TEST(CfgTurnsRowPartiallyOn_returns_false_if_cfg_turns_on_all_of_row1);
    RUN_TEST(CfgTurnsRowPartiallyOn_returns_true_if_cfg_turns_on_part_of_row1);
    RUN_TEST(CfgTurnsRowPartiallyOn_returns_true_if_cfg_turns_on_part_of_row5);
    RUN_TEST(CfgTurnsRowPartiallyOn_returns_true_if_row_number_is_out_bounds);
    RUN_TEST(CfgBytesAreValid_checks_against_all_255_valid_configs); 
    printf("\n# WIP:\n");
    /* RUN_TEST(BytesComing_returns_16bit_word_from_struct_spi_NBytesToExpect); */
    RUN_TEST(CmdCfgLis_returns_StatusBadArgs_if_cfg_bytes_are_invalid);
    RUN_TEST(CmdCfgLis_1pushes_cfg_to_SpiSlave_2pulls_updated_cfg_3reports_StatusOk_updated_cfg);
}}
/* =====[ WIP: Clean Command Parsing with jump tables started 2019-03-01 ]===== */
// header
void LookupBridgeCmd_example_calling_the_command(void);
void LookupBridgeCmd_example_storing_the_returned_pointer(void);
void UsbWriteStatusOk_tells_UsbHost_command_was_success(void);
void UsbWriteStatusInvalid_sends_error_byte_and_echoes_invalid_command(void);
void UsbWriteStatusBadArgs_sends_error_byte_and_echoes_invalid_command(void);
void UsbWriteStatusMissingArgs_sends_error_byte_and_echoes_invalid_command(void);
void UsbWriteStatusSpiBusError_sends_error_byte_and_slave_cmd(void);
void LookupBridgeCmd_sad_example_using_UsbWriteStatus_API(void);
void LookupBridgeCmd_happy_example_using_UsbWriteStatus_API(void);
void CmdCfgLis_returns_StatusOk_and_echoes_back_the_4_cfg_bytes(void);
void CmdCfgLis_returns_StatusBadArgs_if_cfg_bytes_are_invalid(void);
void CmdCfgLis_1pushes_cfg_to_SpiSlave_2pulls_updated_cfg_3reports_StatusOk_updated_cfg(void);
void CfgBytesAreValid_checks_against_all_255_valid_configs(void);
void CfgTurnsOffAllPixels_returns_true_if_cfg_turns_off_all_pixels(void);
void CfgTurnsOffAllPixels_ignores_the_3LSB_and_4MSB_of_cfg(void);
void CfgTurnsOffAllPixels_returns_false_if_any_pixels_are_on(void);
void CfgTurnsRowPartiallyOn_returns_true_if_cfg_turns_on_part_of_row1(void);
void XOR_returns_true_if_a_is_true_and_b_is_false(void);
void CfgTurnsRowPartiallyOn_returns_false_if_cfg_turns_on_all_of_row1(void);
void CfgTurnsRowPartiallyOn_returns_true_if_cfg_turns_on_part_of_row5(void);
void CfgTurnsRowPartiallyOn_returns_true_if_row_number_is_out_bounds(void);
void BytesComing_returns_16bit_word_from_struct_spi_NBytesToExpect(void);

// ---UsbCmdParser_JumpTableSandbox---
void LookupBridgeCmd_example_calling_the_command(void)
{
    //=====[ Setup ]=====
    BiColorLedGreen(status_led);
    /* *BiColorLed_port = 0x00; // fake port with status_led pin green */
    /* ------------------------------- */
    /* =====[ Operate ]===== */
    /* Note the parentheses to make it a function call */
    LookupBridgeCmd(SetBridgeLED_key)(); // call the function returned by lookup
    /* ------------------------------- */
    //=====[ Test ]=====
    TEST_ASSERT_BIT_HIGH(status_led, *BiColorLed_port);
}
void LookupBridgeCmd_example_storing_the_returned_pointer(void)
{
    /* =====[ Setup ]===== */
    bridge_cmd_key cmd;
    /* =====[ Operate ]===== */
    cmd = SetBridgeLED_key;
    BridgeCmd* CmdFn = LookupBridgeCmd(cmd);
    /* =====[ Test ]===== */
    TEST_ASSERT_EQUAL(SetBridgeLED, CmdFn);
    /* =====[ Operate ]===== */
    cmd = CmdBlackHat_key;
    CmdFn = LookupBridgeCmd(cmd);
    /* =====[ Test ]===== */
    TEST_ASSERT_NULL(CmdFn);
}
void UsbWriteStatusOk_tells_UsbHost_command_was_success(void)
{
    /* =====[ Setup ]===== */
    bridge_cmd_key cmd = BridgeCfgLis_key;
    /* =====[ Operate ]===== */
    /* StatusOk means the command is valid and was successfully carried out. */
    /* So LookupBridgeCmd returns a non-NULL function pointer. */
    TEST_ASSERT_NOT_NULL(LookupBridgeCmd(cmd));
    /* simBrd calls CmdFn() and execution enters CmdCfgLis() */
    /* Fake that CmdCfgLis() runs without any errors. */
    bool success = true;
    /* Get a value to unit test without going mock crazy. */
    uint8_t nbytes_sent = 0;
    /* =====[ Operate ]===== */
    /* The conditional check shows how UsbWriteStatusOk is used in CmdCfgLis. */
    if (!success) { ; /* Placeholder for code to send error code to UsbHost.*/ }
    else // received valid command and parameters
    {
        ; // Placeholder for code that does the command.
        nbytes_sent = UsbWriteStatusOk(cmd);
        ; // Placeholder for code that sends updated Lis cfg value to UsbHost.
    };
    /* =====[ Test ]===== */
    TEST_ASSERT_EQUAL(2, nbytes_sent);
}
void UsbWriteStatusInvalid_sends_error_byte_and_echoes_invalid_command(void)
{
    /* =====[ Setup ]===== */
    bridge_cmd_key cmd = CmdBlackHat_key;
    /* =====[ Operate ]===== */
    /* StatusInvalid means the command is not valid. */
    /* So LookupBridgeCmd returns a NULL function pointer. */
    BridgeCmd* CmdFn = LookupBridgeCmd(cmd);
    TEST_ASSERT_NULL(CmdFn);
    /* Get a value to unit test without going mock crazy. */
    uint8_t num_status_bytes_sent = 0;
    /* =====[ Operate ]===== */
    /* The conditional check shows how UsbWriteStatusInvalid is used in simBrd. */
    /* if (CmdFn == NULL) num_status_bytes_sent = UsbWriteStatusInvalid(cmd); */
    if (CmdFn == NULL) num_status_bytes_sent = UsbWriteStatusInvalid();
    else CmdFn();
    /* =====[ Test ]===== */
    TEST_ASSERT_EQUAL(2, num_status_bytes_sent);
}
void UsbWriteStatusBadArgs_sends_error_byte_and_echoes_invalid_command(void)
{
    /* =====[ Setup ]===== */
    bridge_cmd_key cmd = BridgeCfgLis_key;
    /* A bad args status means the command is valid, but not its parameters. */
    /* So LookupBridgeCmd returns a non-NULL function pointer. */
    TEST_ASSERT_NOT_NULL(LookupBridgeCmd(cmd));
    /* simBrd calls CmdFn() and execution enters CmdCfgLis() */
    /* Fake that CmdCfgLis() has an error: CfgByesAreValid() returns false. */
    bool cfg_bytes_are_valid = false;
    /* Get a value to unit test without going mock crazy. */
    uint8_t num_status_bytes_sent = 0;
    /* =====[ Operate ]===== */
    /* Here is how UsbWriteStatusBadArgs is used in CmdCfgLis. */
    if (!cfg_bytes_are_valid) { num_status_bytes_sent = UsbWriteStatusBadArgs(cmd); }
    else {; /* received valid command and parameters, go configure the Lis */ }
    /* =====[ Test ]===== */
    TEST_ASSERT_EQUAL(2,num_status_bytes_sent);
}

// TODO: delete this when UsbReadBytes is in place.
/* =====[ Mock UsbReadN() for unit-testing GetBridgeLED() ]===== */
// Define call recorded when func-under-test calls mocked function.
/* static RecordedCall * Record_UsbReadN(uint8_t *arg1, uint16_t arg2) */
/* { */
/*     char const *call_name = "UsbReadN"; */
/*     RecordedCall *record_of_this_call = RecordedCall_new(call_name); */
/*     RecordedArg *record_of_arg1 = RecordedArg_new(SetupRecord_p_uint8_t); */
/*     *((uint8_t **)record_of_arg1->pArg) = arg1; */
/*     // Crazy pointer syntax for arg1: */
/*         // `pArg` is a pointer to the argument value to store, arg1. */
/*         // Dereference `pArg` with `*` to assign arg1. */
/*         // arg1 is a byte array (a pointer to a byte): uint8_t *. */
/*         // Therefore cast `pArg` as a pointer to a byte array: uint8_t **. */
/*     RecordedArg *record_of_arg2 = RecordedArg_new(SetupRecord_uint16_t); */
/*     *((uint16_t *)record_of_arg2->pArg) = arg2; */
/*     // Crazy pointer syntax for arg2: */
/*         // arg2 is a 16-bit word. */
/*         // So cast `pArg` as a pointer to a 16-bit word. */
/*         // Dereference `pArg` with `*` to assign arg2. */
/*     // Store the arg records in the call record. */
/*     RecordArg(record_of_this_call, record_of_arg1); */
/*     RecordArg(record_of_this_call, record_of_arg2); */
/*     return record_of_this_call; */
/* } */
// Define behavior of stubbed UsbReadN().
static uint16_t UsbReadN_Stubbed(uint8_t *read_buffer, uint16_t nbytes) {
    /* (void)read_buffer; (void)nbytes; // trick to avoid unused args warning */
    *read_buffer = *FtMiosio_pin; // Fake a read by copying register value to read_buffer.
    return nbytes; // Fake: nbytes is whatever the test says it is.
}
// Define behavior of mocked UsbReadN(). Mock is like stub, but also records itself.
/* static uint16_t UsbReadN_Mocked(uint8_t *read_buffer, uint16_t nbytes) { */
/*     RecordActualCall(mock, Record_UsbReadN(read_buffer, nbytes)); */
/*     *read_buffer = *FtMiosio_pin; // Fake a read by copying register value to read_buffer. */
/*     return nbytes; // Fake: nbytes is whatever the test says it is. */
/* } */
uint8_t * FakeByteArray_ForUsbReadN;
/* static uint16_t UsbReadN_ByteArray_Mocked(uint8_t *read_buffer, uint16_t nbytes) { */
/*     // Fake reading an array of bytes into the read_buffer. */
/*     // The test is responsible to populate FakeByteArray_ForUsbReadN. */
/*     RecordActualCall(mock, Record_UsbReadN(read_buffer, nbytes)); */
/*     uint16_t byte_counter = 0; */
/*     while ( byte_counter++ < nbytes ) */
/*     { */
/*         *(read_buffer++)  = *(FakeByteArray_ForUsbReadN++); */
/*     } */
/*     return nbytes; */
/* } */
// Define how to swap function definitions
static uint16_t (*UsbReadN_Saved)(uint8_t *, uint16_t);
// how to restore real UsbReadN()
static void Restore_UsbReadN(void) {UsbReadN=UsbReadN_Saved;}
// how to swap real UsbReadN() with stubbed version
static void Stub_UsbReadN(void) {UsbReadN_Saved=UsbReadN;UsbReadN=UsbReadN_Stubbed;}
// how to swap real UsbReadN() with mocked version
/* static void Mock_UsbReadN(void) {UsbReadN_Saved=UsbReadN;UsbReadN=UsbReadN_Mocked;} */
/* static void Mock_UsbReadN_ByteArray(void) */
/* { */
/*     UsbReadN_Saved=UsbReadN; */
/*     UsbReadN=UsbReadN_ByteArray_Mocked; */
/* } */
void UsbWriteStatusMissingArgs_sends_error_byte_and_echoes_invalid_command(void)
{
    /* =====[ Setup ]===== */
    bridge_cmd_key cmd = BridgeCfgLis_key;
    /* TimedOut means the command is valid, but a timer expired */
    /* before receiving the expected number of bytes. */
    /* So LookupBridgeCmd returns a non-NULL function pointer. */
    TEST_ASSERT_NOT_NULL(LookupBridgeCmd(cmd));
    /* simBrd calls CmdFn() and execution enters CmdCfgLis() */
    /* CmdCfgLis() calls UsbRead to read the four cfg bytes. */
    /* Execution enters UsbRead, but UsbRead timeouts and reads < 4 bytes. */
    /* Fake that UsbReadN() returns nbytes_read < 4. */
    bool nybtes_read_is_less_than_num_cfgbytes = true;
    /* Get a value to unit test without going mock crazy. */
    uint8_t num_status_bytes_sent = 0;
    /* =====[ Operate ]===== */
    /* Here is how UsbWriteStatusMissingArgs is used in CmdCfgLis. */
    if (nybtes_read_is_less_than_num_cfgbytes)
    {
        num_status_bytes_sent = UsbWriteStatusMissingArgs(BridgeCfgLis_key);
    }
    else {; /* number of bytes is correct, go check the bytes are valid */ }
    TEST_ASSERT_EQUAL(2,num_status_bytes_sent);
}
void UsbWriteStatusSpiBusError_sends_error_byte_and_slave_cmd(void)
{
    /* This just tests that two bytes are sent. */
    /* I cannot check the value of those two bytes. */
    /* =====[ Operate ]===== */
    uint8_t num_status_bytes_sent = 0;
    num_status_bytes_sent = UsbWriteStatusSpiBusError(BridgeGetSensorLED_key);
    /* =====[ Test ]===== */
    TEST_ASSERT_EQUAL_MESSAGE( 2, num_status_bytes_sent,
        "Expect `UsbWriteStatusSpiBusError` to send two bytes.");
}
void LookupBridgeCmd_sad_example_using_UsbWriteStatus_API(void){
    /* =====[ Setup ]===== */
    bridge_cmd_key cmd = CmdBlackHat_key; // receive an invalid command
    /* =====[ Operate Example of Invalid Command (no test here) ]===== */
    BridgeCmd* CmdFn = LookupBridgeCmd(cmd);
    if (CmdFn == NULL) // sad
    {
        /* Send two bytes: error-code and cmd */
        /* UsbWriteStatusInvalid(cmd); */
        UsbWriteStatusInvalid();
    }
    else CmdFn();
}
void LookupBridgeCmd_happy_example_using_UsbWriteStatus_API(void){
    /* =====[ Setup ]===== */
    bridge_cmd_key cmd = SetBridgeLED_key;
    /* =====[ Operate Example of Valid Command (no test here) ]===== */
    BridgeCmd* CmdFn = LookupBridgeCmd(cmd);
    /* if (CmdFn == NULL) UsbWriteStatusInvalid(cmd); */
    if (CmdFn == NULL) UsbWriteStatusInvalid();
    else CmdFn();
    /* It is the CmdFn() responsibility to send UsbWriteStatusOk() at the end of a */
    /*     successful command (or some other code). */
    /* If a CmdFn() sends additional data, it must send UsbWriteStatusOk() prior to */
    /* sending the requested data. */
}

// header
void SetUp_Stub_UsbReadN_with_value_in_read_buffer(void);
void TearDown_Stub_UsbReadN_with_value_in_read_buffer(void);
void Stub_UsbReadN_with_value_in_read_buffer(void);
//
void SetUp_Stub_UsbReadN_with_value_in_read_buffer(void)
{
    SetUp_Mock();
    Stub_UsbReadN();
}
void TearDown_Stub_UsbReadN_with_value_in_read_buffer(void)
{
    TearDown_Mock();
    Restore_UsbReadN();
}
void Stub_UsbReadN_with_value_in_read_buffer(void)
{ // This test demonstrates how to fake the value read over USB.
    /* =====[ Inject a fake value into the read_buffer ]===== */
    // Write the fake value to the low-level hardware register
    // accessed during the UsbRead: register `FtMiosio_pin`.
    uint8_t const led_number = led_0+100; *FtMiosio_pin = led_number;
    /* =====[ Operate: Read one byte, store result in read_buffer. ]===== */
    uint8_t const num_bytes_payload = 1;
    uint8_t read_buffer[num_bytes_payload];
    UsbReadN(read_buffer, num_bytes_payload); // stub reads fake pin values
    /* =====[ Test: this unit test injects its fake value in read_buffer[0] ]===== */
    TEST_ASSERT_EQUAL_UINT8(led_number, read_buffer[0]);
}

/* =====[ Jump Table Sandbox ]===== */
/* API for a caller of LookupBridgeCmd to respond to all command keys with: */
/* 0 (OK) */
/* or non-0 (error code) */
    /* If command was understood and everything followed a happy path, then first */
    /* byte sent back is always 0 (OK) followed by extra bytes if appropriate. */
    /* If first byte back is *not* zero, look at the error code and see how to */
    /* interpret what follows. */
    /* ---error codes--- */
    /* 1: command key is not recognized */
/* This implies I want to return a function pointer to let the caller send the */
/* appropriate response to the USB host. */
void BytesComing_example_usage_to_catch_a_slave_error(void)
{
    TEST_FAIL_MESSAGE("Implement test.");
    /* /1* =====[ Setup ]===== *1/ */
    /* spi_BytesComing_s response_size; */
    /* response_size.msb = 0x00; */
    /* response_size.lsb = 0x01; */
    /* /1* =====[ Operate and Test ]===== *1/ */
    /* uint16_t expect = 0x0310; */
    /* if ( BytesComing(response_size) != 1 ) */
    /* { */
    /*     UsbWriteStatusSpiBusError(spi_Led1_Red_key); */
    /*     return; */
    /* } */

}

void CmdCfgLis_returns_StatusOk_and_echoes_back_the_4_cfg_bytes(void){
    /* =====[ Setup ]===== */
    bridge_cmd_key cmd = BridgeCfgLis_key;
    /* =====[ Operate ]===== */
    BridgeCmd* CmdFn = LookupBridgeCmd(cmd);
     // Make sure the command is in the jump table.
    TEST_ASSERT_NOT_NULL(CmdFn);
    /* if (CmdFn == NULL) UsbWriteStatusInvalid(cmd); // just showing the test as example */
    if (CmdFn == NULL) UsbWriteStatusInvalid(); // just showing the test as example
    else CmdFn(); // This is `CmdCfgLis()`
    //
    /* =====[ Test ]===== */
    //
    /* CmdFn() sends additional data, it must send UsbWriteStatusOk() prior to */
    /* sending the requested data. */
    /* [-] How do I test that this wrote StatusOK and then echoed the 4 bytes? */
    /*     I can check how many times UsbWrite is called if I mock it out. */
    /* Nah, do systems-level tests for this using Python script. */
}
void CmdCfgLis_returns_StatusBadArgs_if_cfg_bytes_are_invalid(void)
{
    TEST_FAIL_MESSAGE("Implement test.");
}
void CmdCfgLis_1pushes_cfg_to_SpiSlave_2pulls_updated_cfg_3reports_StatusOk_updated_cfg(void)
{
    TEST_FAIL_MESSAGE("Functionality not implemented yet.");
}
void CfgTurnsOffAllPixels_returns_true_if_cfg_turns_off_all_pixels(void)
{
    /* =====[ Setup ]===== */
    /* This is the special case of invalid config: all pixels off. */
    /* Pixel on/off bits are all zero. Test with all bits zero. */
    uint8_t const invalid_cfg[] = {0x00, 0x00, 0x00, 0x00};
    /* =====[ Test ]===== */
    TEST_ASSERT_TRUE(CfgTurnsOffAllPixels(invalid_cfg));
}
void CfgTurnsOffAllPixels_ignores_the_3LSB_and_4MSB_of_cfg(void)
{
    /* =====[ Setup ]===== */
    /* This is the special case invalid config. */
    /* Pixel on/off bits are all zero. Test with don't-care bits all one. */
    uint8_t const invalid_cfg[] = {0xF0, 0x00, 0x00, 0x07};
    /* =====[ Test ]===== */
    TEST_ASSERT_TRUE(CfgTurnsOffAllPixels(invalid_cfg));
}
void CfgTurnsOffAllPixels_returns_false_if_any_pixels_are_on(void)
{
    /* =====[ Setup ]===== */
    /* There are many (2^25-1) ways for 1 or more of 25 bits to be 1. */
    /* Just test a few. */
    uint8_t const cfg_with_1_pixel_on[] = {0xF1, 0x00, 0x00, 0x07};
    uint8_t const cfg_with_2_pixels_on[] = {0xF1, 0x01, 0x00, 0x07};
    uint8_t const cfg_with_3_pixels_on[] = {0xF0, 0x00, 0x03, 0x17};
    /* =====[ Test ]===== */
    TEST_ASSERT_FALSE(CfgTurnsOffAllPixels(cfg_with_1_pixel_on));
    TEST_ASSERT_FALSE(CfgTurnsOffAllPixels(cfg_with_2_pixels_on));
    TEST_ASSERT_FALSE(CfgTurnsOffAllPixels(cfg_with_3_pixels_on));
}
void XOR_returns_true_if_a_is_true_and_b_is_false(void)
{
    /* =====[ Operate and Test ]===== */
    TEST_ASSERT_TRUE(XOR(true,false));
    TEST_ASSERT_TRUE(XOR(false,true));
    TEST_ASSERT_FALSE(XOR(false,false));
    TEST_ASSERT_FALSE(XOR(true,true));
}
void CfgTurnsRowPartiallyOn_returns_false_if_cfg_turns_on_all_of_row1(void)
{
    /* =====[ Setup ]===== */
    uint8_t row1 = 1;
    /*                 xxxx5432154321543215432154321ggb */
    /* row1        = 0b00000000100001000010000100001001 */
    uint8_t const cfg_row_all_on[] = {0x00, 0x84, 0x21, 0x09};
    /* =====[ Operate and Test ]===== */
    TEST_ASSERT_FALSE( CfgTurnsRowPartiallyOn(cfg_row_all_on, row1) );
}
void CfgTurnsRowPartiallyOn_returns_true_if_cfg_turns_on_part_of_row1(void)
{
    /* =====[ Setup ]===== */
    uint8_t row1 = 1;
    /*                 xxxx5432154321543215432154321ggb */
    /* row1        = 0b00000000000001000010000100000001 */
    uint8_t const cfg_row_partly_on[] = {0x00, 0x04, 0x21, 0x01};
    /* =====[ Operate and Test ]===== */
    TEST_ASSERT_TRUE( CfgTurnsRowPartiallyOn(cfg_row_partly_on, row1) );

}
void CfgTurnsRowPartiallyOn_returns_true_if_cfg_turns_on_part_of_row5(void)
{
    /* Row 5 is important to test to catch for indexing off-by-one errors. */
    /* Row_number (not zero-indexed) indexes into */
    /* the array of row_masks (zero-indexed because it's an array). */
    /* =====[ Setup ]===== */
    uint8_t row5 = 5;
    uint8_t const cfg_row_partly_on[] = {0x00, 0x42, 0x10, 0x81};
    /* =====[ Operate and Test ]===== */
    TEST_ASSERT_TRUE( CfgTurnsRowPartiallyOn(cfg_row_partly_on, row5) );
}
void CfgTurnsRowPartiallyOn_returns_true_if_row_number_is_out_bounds(void)
{
    /* This is to make sure my own programming mistakes don't result in a core */
    /* dump. But I should be careful with this. It could turn into a hard to */
    /* trace bug if everything is compiling but CfgBytesAreValid seems to */
    /* misbehave, all because I accidentally passed it the wrong row number. */
    /* Not sure there's a better solution though. */

    /* =====[ Setup ]===== */
    uint8_t row_whoops = 6;
    /*                 xxxx5432154321543215432154321ggb */
    /* row1        = 0b00000000100001000010000100001001 */
    uint8_t const cfg_row_all_on[] = {0x00, 0x84, 0x21, 0x09};
    /* =====[ Operate and Test ]===== */
    TEST_ASSERT_TRUE_MESSAGE(
        CfgTurnsRowPartiallyOn(cfg_row_all_on, row_whoops),
        "Expected false because cfg turns on *all* of row 1. Received true because "
        "row number is out of bounds. This is the way CfgTurnsRowPartiallyOn() "
        "deals with out of bounds row numbers."
        );
}

void CfgBytesAreValid_checks_against_all_255_valid_configs(void)
{
    /* Plan of attack: check a handful of valid and invalid cases. */
    /* =====[ Operate and Test ]===== */
    /* CfgBytes are invalid if they turn off *all* rows. */
    uint8_t const invalid_cfg[] = {0x00, 0x00, 0x00, 0x00};
    TEST_ASSERT_FALSE(CfgBytesAreValid(invalid_cfg));
    /* Here are some standard valid configs. */
    uint8_t const all_rows_on[] = {0x0F, 0xFF, 0xFF, 0xF9};
    TEST_ASSERT_TRUE_MESSAGE(CfgBytesAreValid(all_rows_on),"all_rows_on");
    uint8_t const row_1_on[] = {0x00, 0x84, 0x21, 0x09};
    TEST_ASSERT_TRUE(CfgBytesAreValid(row_1_on));
    uint8_t const row_2_on[] = {0x01, 0x08, 0x42, 0x11};
    TEST_ASSERT_TRUE(CfgBytesAreValid(row_2_on));
    uint8_t const row_3_on[] = {0x02, 0x10, 0x84, 0x21};
    TEST_ASSERT_TRUE(CfgBytesAreValid(row_3_on));
    uint8_t const row_4_on[] = {0x04, 0x21, 0x08, 0x41};
    TEST_ASSERT_TRUE(CfgBytesAreValid(row_4_on));
    uint8_t const row_5_on[] = {0x08, 0x42, 0x10, 0x81};
    TEST_ASSERT_TRUE(CfgBytesAreValid(row_5_on));
    /* Here is a valid config that is not the default all rows on. */
    uint8_t const row_1_2_3_on[] = {0x03, 0x9C, 0xE7, 0x39};
    TEST_ASSERT_TRUE(CfgBytesAreValid(row_1_2_3_on));
    /* Here are some invalid configs. */
    uint8_t const invalid_cfg1[] = {0x0F, 0x83, 0xE0, 0xF9};
    TEST_ASSERT_FALSE(CfgBytesAreValid(invalid_cfg1));
    uint8_t const invalid_cfg2[] = {0x0F, 0xFF, 0xE0, 0x01};
    TEST_ASSERT_FALSE(CfgBytesAreValid(invalid_cfg2));
    uint8_t const invalid_cfg3[] = {0x00, 0x03, 0xFF, 0xF9};
    TEST_ASSERT_FALSE(CfgBytesAreValid(invalid_cfg3));
}


// test runner
void DevelopingInlineSpiMaster(bool run_test) {if (run_test) {
    setUp = SetUp_SpiMasterWrite; tearDown = TearDown_SpiMasterWrite;
    RUN_TEST(SpiMasterWriteN_NoInlineHelpers_sends_N_bytes_to_SpiSlave);
    RUN_TEST(SpiMasterWriteByte_sends_one_byte_to_SpiSlave);
}}
// tests
void SpiMasterWriteN_NoInlineHelpers_sends_N_bytes_to_SpiSlave(void)
{
    /* =====[ Setup ]===== */
    /* Stub_SpiTransferIsDone: check if SPI interrupt flag is set. */
    /* Fake the SPIF values returned. The test hangs if SPIF is never set! */
    bool SPIFs[] = {false, false, true};
    uint8_t const nfalse = 2;
    SpiTransferIsDone_StubbedReturnValue = SPIFs;

    /* =====[ Set Expectations ]===== */
    Expect_SpiTransferIsDone(); // SPIF is clear
    Expect_SpiTransferIsDone(); // SPIF is still clear
    Expect_SpiTransferIsDone(); // SPIF is set!

    /* =====[ Fake the registers. ]===== */
    /* Fake the `Spi_port`. */
    /* Slave Select starts low to test */
    /* that `Spi_Ss` is high when `SpiMasterWriteN_NoInlineHelpers` is done. */
    *Spi_port = 0x00;

    /* 3. Fake the `Spi_spdr`. */
    /* Start with `Spi_spdr` != `cmd` to test that */
    /* `SpiMasterWriteN_NoInlineHelpers` loads `Spi_spdr` with `cmd`. */
    *Spi_spdr = 0xFF;

    /* =====[ Operate ]===== */
    /* Fake the UsbHost sent CmdLedRed. */
    /* Write the command to turn debug_led1 red on the SPI slave. */
    uint8_t const cmd_led1_red[] = {0x00};
    uint8_t nbytes = sizeof(cmd_led1_red);
    TEST_ASSERT_EQUAL_MESSAGE( sizeof(SPIFs)-nfalse, nbytes,
        "Make sure there is one true SPIF value for each byte sent."
        );
    SpiMasterWriteN_NoInlineHelpers(cmd_led1_red, nbytes);

    /* =====[ Test ]===== */
    TEST_ASSERT_BIT_HIGH_MESSAGE( Spi_Ss, *Spi_port,
        "Expect *Slave Select* is high when done."
        );
    TEST_ASSERT_EQUAL_UINT8_MESSAGE( *Spi_spdr, cmd_led1_red[0],
        "Expect `cmd_1ed1_red` was written to the *SPI data register*."
        );

    TEST_ASSERT_TRUE_MESSAGE(
    RanAsHoped(mock),           // If this is false,
    WhyDidItFail(mock)          // print this message.
    );
}

void SpiMasterWriteByte_sends_one_byte_to_SpiSlave(void)
{
    /* =====[ Setup ]===== */
    /* Fake the SPI interrupt flag in the SPI status register. */
    /* Start test with SPIF set so that `SpiMasterWriteN` sees */
    /* the transmission is done when it checks this flag. */
    SetBit(Spi_spsr, Spi_InterruptFlag);

    /* =====[ Fake the registers. ]===== */
    /* Fake the `Spi_port`. */
    /* Start test with Slave Select low to test that */
    /* `Spi_Ss` is high when `SpiMasterWriteByte` is done. */
    *Spi_port = 0x00;

    /* 3. Fake the `Spi_spdr`. */
    /* Start test with `Spi_spdr` != `cmd` to test that */
    /* `SpiMasterWriteByte` loads `Spi_spdr` with `cmd`. */
    uint8_t const black_hat_cmd = 0xFF;
    *Spi_spdr = black_hat_cmd;

    /* =====[ Operate ]===== */
    /* Simulate that the UsbHost sent CmdLedRed. */
    /* Write the command to turn led1 red on the SPI slave. */
    uint8_t const cmd_led1_red = 0x00;
    SpiMasterWriteByte(cmd_led1_red);

    /* =====[ Test ]===== */
    TEST_ASSERT_BIT_HIGH_MESSAGE( Spi_Ss, *Spi_port,
        "Expect *Slave Select* is high when done."
        );
    TEST_ASSERT_EQUAL_UINT8_MESSAGE( *Spi_spdr, cmd_led1_red,
        "Expect `cmd_led1_red` was written to the *SPI data register*."
        );
}



void GetBridgeLED_replies_msg_status_error_if_host_queries_nonexistent_led(void)
{
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t payload[] = {led_0+100};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Test case: msg_status is error because led number is not recognized. */
    status_byte msg_status = error;
    /* =====[ Operate ]===== */
    GetBridgeLED();
    /* =====[ Test ]===== */
    uint8_t call_n = 2;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
    uint8_t arg_n = 1;
    TEST_ASSERT_TRUE(AssertArg(mock, call_n, arg_n, (uint8_t *)&msg_status));
}
void GetBridgeLED_replies_with_one_byte_if_led_number_is_not_recognized(void)
{
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t payload[] = {led_0+100};
    FakeByteArray_ForUsbReadBytes = payload;
    /* =====[ Operate ]===== */
    GetBridgeLED();
    /* PrintAllCalls(mock); */
    /* =====[ Test ]===== */
    // Assert there are only two calls total.
    TEST_ASSERT_EQUAL_UINT8(2, NumberOfActualCalls(mock));
    // And assert that only the last call sends a byte.
    uint8_t call_n;
    call_n = 1;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "UsbReadBytes"));
    call_n = 2;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
}
void GetBridgeLED_replies_msg_status_ok_if_host_queries_status_led(void)
{
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t payload[] = {led_0};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Test case: LED is recognized, expect msg_status is ok */
    status_byte msg_status = ok;
    /* =====[ Operate ]===== */
    GetBridgeLED();
    /* =====[ Test ]===== */
    uint8_t call_n = 2;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
    uint8_t arg_n = 1;
    TEST_ASSERT_TRUE(AssertArg(mock, call_n, arg_n, (uint8_t *)&msg_status));
}
void GetBridgeLED_replies_with_two_bytes_if_led_number_is_recognized(void)
{
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t payload[] = {led_0};
    FakeByteArray_ForUsbReadBytes = payload;
    /* =====[ Operate ]===== */
    GetBridgeLED();
    /* PrintAllCalls(mock); */
    /* =====[ Test ]===== */
    // Assert there are only three calls total.
    TEST_ASSERT_EQUAL_UINT8(3, NumberOfActualCalls(mock));
    // And assert that only the last two calls send bytes.
    uint8_t call_n;
    call_n = 1;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "UsbReadBytes"));
    call_n = 2;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
    call_n = 3;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
}
void GetBridgeLED_replies_with_msg_status_byte_and_led_status_byte(void)
{
    /* =====[ Test Case: BridgeLED is green ]===== */
    status_byte msg_status = ok; status_byte led_status = led_green;
    /* Inject value in fake hardware registers to set led state for test: */
    /*  - (BiColorLed_ddr,status_led) set: on, clear: off */
    /*  - (BiColorLed_port,status_led) set: red, clear: green */
    SetBit(BiColorLed_ddr,status_led); // led is on
    ClearBit(BiColorLed_port,status_led); // led is green
    /* Inject one byte of payload for fake UsbReadBytes. */
     /* - inject led_0 to indicate payload from host */
     /* - any other value is an error because status_led is the only Bridge LED */
    uint8_t payload[] = {led_0};
    FakeByteArray_ForUsbReadBytes = payload;
    /* =====[ Operate ]===== */
    GetBridgeLED();
    /* =====[ Test ]===== */
    /* PrintAllCalls(mock); */
    uint8_t call_n; uint8_t arg_n;
    call_n = 2; arg_n = 1;
    TEST_ASSERT_TRUE(AssertCall(mock,call_n,"SerialWriteByte"));
    TEST_ASSERT_TRUE(AssertArg(mock,call_n,arg_n,(uint8_t*)&msg_status));
    call_n = 3; arg_n = 1;
    TEST_ASSERT_TRUE(AssertCall(mock,call_n,"SerialWriteByte"));
    TEST_ASSERT_TRUE(AssertArg(mock,call_n,arg_n,(uint8_t*)&led_status));
}
void GetBridgeLED_replies_led_off_if_status_led_is_off(void)
{
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t payload[] = {led_0};
    FakeByteArray_ForUsbReadBytes = payload;
    /* =====[ Inject led_state ]===== */
    BiColorLedOff(status_led);
    /* =====[ Operate ]===== */
    GetBridgeLED();
    /* =====[ Test ]===== */
    uint8_t call_n; uint8_t arg_n;
    call_n = 3; arg_n = 1;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
    status_byte led_status = led_off;
    TEST_ASSERT_TRUE(AssertArg(mock, call_n, arg_n, (uint8_t*)&led_status));
}
void GetBridgeLED_replies_led_green_if_status_led_is_green(void)
{
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t payload[] = {led_0};
    FakeByteArray_ForUsbReadBytes = payload;
    /* =====[ Inject led_state ]===== */
    BiColorLedOn(status_led); BiColorLedGreen(status_led);
    /* =====[ Operate ]===== */
    GetBridgeLED();
    /* =====[ Test ]===== */
    uint8_t call_n; uint8_t arg_n;
    call_n = 3; arg_n = 1;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
    status_byte led_status = led_green;
    TEST_ASSERT_TRUE(AssertArg(mock, call_n, arg_n, (uint8_t*)&led_status));
}
void GetBridgeLED_replies_led_red_if_status_led_is_red(void)
{
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t payload[] = {led_0};
    FakeByteArray_ForUsbReadBytes = payload;
    /* =====[ Inject led_state ]===== */
    BiColorLedOn(status_led); BiColorLedRed(status_led);
    /* =====[ Operate ]===== */
    GetBridgeLED();
    /* =====[ Test ]===== */
    uint8_t call_n; uint8_t arg_n;
    call_n = 3; arg_n = 1;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
    status_byte led_status = led_red;
    TEST_ASSERT_TRUE(AssertArg(mock, call_n, arg_n, (uint8_t*)&led_status));
}

void BytesComing_returns_16bit_word_from_struct_spi_NBytesToExpect(void)
{
    /* =====[ Setup ]===== */
    BytesComing_s response_size;
    response_size.msb = 0x03;
    response_size.lsb = 0x10;
    /* =====[ Operate and Test ]===== */
    uint16_t expect = 0x0310;
    TEST_ASSERT_EQUAL_UINT16(expect, BytesComing(response_size));
}

void old_GetBridgeLED_always_replies_with_two_bytes(void)
{
    /* ---Test reply is two bytes when led_number is valid--- */
    /* =====[ Setup ]===== */
    // Inject one byte of payload for fake UsbReadBytes.
    uint8_t good_led_number = led_0;
    uint8_t payload[] = {good_led_number};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Inject LED state */
    BiColorLedOn(status_led);
    BiColorLedGreen(status_led);
    /* uint8_t led_state = led_green; */
    /* =====[ Operate ]===== */
    GetBridgeLED();
    /* =====[ Test: assert UsbReadBytes called to read 1 byte ]===== */
    printf("Valid LED number:\n");
    /* PrintAllCalls(mock); // view entire call history */
    uint8_t call_n;
    /* uint16_t arg_n; uint8_t arg_value; */
    call_n = 2;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
    /* arg_n = 1; arg_value = ok; */
    /* TEST_ASSERT_TRUE(AssertArg(mock, call_n, arg_n, &arg_value)); */
    call_n = 3;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
    /* arg_n = 1; arg_value = led_state; */
    /* TEST_ASSERT_TRUE(AssertArg(mock, call_n, arg_n, &arg_value)); */

    /* ---Test reply is two bytes when led_number is invalid--- */
    TearDown_Mock();
    SetUp_Mock();
    /* =====[ Setup ]===== */
    // Inject one byte of payload for fake UsbReadBytes.
    uint8_t bad_led_number = led_0+99;
    payload[0] = bad_led_number;
    FakeByteArray_ForUsbReadBytes = payload;
    /* Inject LED state */
    BiColorLedOn(status_led);
    BiColorLedGreen(status_led);
    /* uint8_t led_state = led_green; */
    /* =====[ Operate ]===== */
    GetBridgeLED();
    /* =====[ Test: assert UsbReadBytes called to read 1 byte ]===== */
    printf("Invalid LED number:\n");
    /* PrintAllCalls(mock); // view entire call history */
    call_n = 2;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
    /* arg_n = 1; arg_value = ok; */
    /* TEST_ASSERT_TRUE(AssertArg(mock, call_n, arg_n, &arg_value)); */
    call_n = 3;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
    /* arg_n = 1; arg_value = led_state; */
    /* TEST_ASSERT_TRUE(AssertArg(mock, call_n, arg_n, &arg_value)); */
}
void old_BridgeGetSensorLED_sends_Sensor_led_number_if_Sensor_responds_ok_to_command(void)
{
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t payload[] = {led_0};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Inject Sensor responses. */
    uint8_t sensor_responses[] = {ok, 0x00, 0x01, error};
    FakeByteArray_ForReadSensor = sensor_responses;
    /* =====[ Operate ]===== */
    BridgeGetSensorLED();
    /* =====[ Test ]===== */
    uint8_t call_n = 6;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SpiWriteByte"));
    uint8_t arg_n = 1;
    TEST_ASSERT_TRUE(AssertArg(mock, call_n, arg_n, payload));
}
void old_BridgeGetSensorLED_reads_two_bytes_of_reply_size_and_nbytes_of_reply_from_Sensor(void)
{
    /* Inject led_number as one byte of payload for fake UsbReadBytes. */
    uint8_t led_number = led_0+100;
    uint8_t payload[] = {led_number};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Inject Sensor responses. */
    uint8_t sensor_responses[] = {ok, 0x00, 0x01, error};
    FakeByteArray_ForReadSensor = sensor_responses;
    /* =====[ Operate ]===== */
    BridgeGetSensorLED();
    /* =====[ Test ]===== */
    uint8_t call_n; uint8_t arg_n; uint16_t sensor_reply_size;
    call_n = 7;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertCall(mock, call_n, "ReadSensor"),
        "Expect call 7 is ReadSensor (get Sensor reply size)."
        );
    arg_n = 2; sensor_reply_size=2;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertArg(mock, call_n, arg_n, &sensor_reply_size),
        "Expect first call to ReadSensor reads two bytes of reply_size."
        );
    call_n++;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertCall(mock, call_n, "ReadSensor"),
        "Expect call 8 is ReadSensor."
        );
    arg_n = 2; sensor_reply_size=1;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertArg(mock, call_n, arg_n, &sensor_reply_size),
        "Expect GetSensorLED only reads one byte of data. This test simulates when Sensor responds with error: invalid command parameter."
        );
}
void old_BridgeGetSensorLED_passes_reply_size_and_reply_to_host(void)
{
    /* Inject led_number as one byte of payload for fake UsbReadBytes. */
    uint8_t led_number = led_0;
    uint8_t payload[] = {led_number};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Inject Sensor responses. */
    uint8_t sensor_responses[] = {ok, 0x00, 0x02, ok, led_red};
    FakeByteArray_ForReadSensor = sensor_responses;
    /* =====[ Operate ]===== */
    BridgeGetSensorLED();
    /* =====[ Test ]===== */
    uint8_t call_n; uint8_t arg_n; uint16_t byte_index;
    call_n = 9;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertCall(mock, call_n, "SerialWriteByte"),
        "Expect call 9 is SerialWriteByte."
        );
    arg_n = 1; byte_index = 1;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertArg(mock, call_n, arg_n, &sensor_responses[byte_index]),
        "Expect MSB of reply_size is sensor_responses[1] (==0)."
        );
    call_n++;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertCall(mock, call_n, "SerialWriteByte"),
        "Expect call 10 is SerialWriteByte."
        );
    arg_n = 1; byte_index++;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertArg(mock, call_n, arg_n, &sensor_responses[byte_index]),
        "Expect LSB of reply_size is sensor_responses[2] (==2)."
        );
    call_n++;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertCall(mock, call_n, "SerialWriteByte"),
        "Expect call 11 is SerialWriteByte."
        );
    arg_n = 1; byte_index++;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertArg(mock, call_n, arg_n, &sensor_responses[byte_index]),
        "Expect Sensor msg status is sensor_responses[3] (ok)."
        );
    call_n++;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertCall(mock, call_n, "SerialWriteByte"),
        "Expect call 12 is SerialWriteByte."
        );
    arg_n = 1; byte_index++;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertArg(mock, call_n, arg_n, &sensor_responses[byte_index]),
        "Expect Sensor led status is sensor_responses[4] (led_red)."
        );
}
void old_BridgeGetSensorLED_sends_msg_status_ok_if_it_receives_a_reply_from_the_Sensor(void)
{
    /* Inject led_number as one byte of payload for fake UsbReadBytes. */
    uint8_t led_number = led_0;
    uint8_t payload[] = {led_number};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Inject Sensor responses. */
    uint8_t sensor_responses[] = {0x00, 0x02, error, led_red};
    FakeByteArray_ForReadSensor = sensor_responses;
    /* =====[ Operate ]===== */
    BridgeGetSensorLED();
    /* =====[ Test ]===== */
    uint8_t call_n; uint8_t arg_n;
    call_n = 5;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertCall(mock, call_n, "SerialWriteByte"),
        "Expect call 5 is SerialWriteByte."
        );
    arg_n = 1; uint8_t msg_status = ok;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertArg(mock, call_n, arg_n, &msg_status),
        "Expect msg_status is ok (==0)."
        );
}
void old_BridgeGetSensorLED_passes_cmd_to_Sensor_and_waits_for_response(void)
{
    /* I'm hanging onto this old test to show future me how to do something like this. */

    /* GetSensorLED calls WriteSensor to pass information to the Sensor. */
    /* The first argument is an array of bytes to send. */
    /* This test spies on the array via `SpyOn_WriteSensor_arg1`. */
    /* `cmd` is first byte in array. */
    /*     This byte is hardcoded in GetSensorLed as `GetSensorLED_key`. */
    /* `led_number` is second byte in array. */
    /*     The LED number is injected by this test. */
    /* Inject led_number as one byte of payload for fake UsbReadBytes. */
    uint8_t led_number = led_0;
    uint8_t payload[] = {led_number};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Inject Sensor responses. */
    uint8_t sensor_responses[] = {error, led_red};
    FakeByteArray_ForReadSensor = sensor_responses;
    /* =====[ Operate ]===== */
    BridgeGetSensorLED();
    /* =====[ Test ]===== */
    uint8_t call_n; uint16_t arg_n;
    call_n = 2;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertCall(mock, call_n, "WriteSensor"),
        "Expect call number 2 is WriteSensor."
        );
    arg_n = 2; uint16_t nbytes = 2;
    TEST_ASSERT_TRUE_MESSAGE(
        AssertArg(mock, call_n, arg_n, &nbytes),
        "Expect WriteSensor writes two bytes."
        );
    /* WriteSensor_Mocked spies on values in input arg `write_buffer` */
    printf("WriteSensor called with write_buffer[0] == %d\n", SpyOn_WriteSensor_arg1[0]);
    printf("WriteSensor called with write_buffer[1] == %d\n", SpyOn_WriteSensor_arg1[1]);
    TEST_ASSERT_EQUAL_UINT8_MESSAGE(
        BridgeGetSensorLED_key, SpyOn_WriteSensor_arg1[0],
        "Expect `msg_to_sensor[0]` == 2 (BridgeGetSensorLED_key)."
        );
    TEST_ASSERT_EQUAL_UINT8_MESSAGE(
        led_number, SpyOn_WriteSensor_arg1[1],
        "Expect `msg_to_sensor[1]` == 0 (led_0)."
        );
}
void old_BridgeGetSensorLED_exits_if_Sensor_responds_error_to_command(void)
{
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t payload[] = {led_0};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Inject Sensor responses. */
    uint8_t sensor_responses[] = {error};
    FakeByteArray_ForReadSensor = sensor_responses;
    /* =====[ Operate ]===== */
    BridgeGetSensorLED();
    /* =====[ Test ]===== */
    uint8_t last_call = 5; uint8_t response = error;
    // Test 5th call reports Sensor "invalid cmd error" to the host.
    TEST_ASSERT_TRUE(AssertCall(mock, last_call, "SerialWriteByte"));
    TEST_ASSERT_TRUE(AssertArg(mock, last_call, 1, &response));
    // Test 5th call is the last call.
    TEST_ASSERT_EQUAL_UINT8(last_call, NumberOfActualCalls(mock));
}
void old_BridgeGetSensorLED_passes_Sensor_command_response_back_to_host(void)
{
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t payload[] = {led_0};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Inject Sensor responses. */
    uint8_t sensor_responses[] = {error};
    FakeByteArray_ForReadSensor = sensor_responses;
    /* =====[ Operate ]===== */
    BridgeGetSensorLED();
    /* =====[ Test ]===== */
    /* PrintAllCalls(mock); */
    uint8_t call_n; uint8_t arg_n;
    call_n = 5;
    TEST_ASSERT_TRUE(AssertCall(mock, call_n, "SerialWriteByte"));
    arg_n = 1; uint8_t response = error;
    TEST_ASSERT_TRUE(AssertArg(mock, call_n, arg_n, &response));
}
void old_BridgeGetSensorLED_reads_two_bytes_of_reply_from_Sensor(void)
{
    /* =====[ Setup ]===== */
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t bad_led_number = led_0+99;
    uint8_t payload[] = {bad_led_number};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Inject Sensor responses. */
    uint8_t sensor_responses[] = {error};
    FakeByteArray_ForReadSensor = sensor_responses;
    /* =====[ Operate ]===== */
    BridgeGetSensorLED();
    /* =====[ Test ]===== */
    /* PrintAllCalls(mock); */
    uint8_t call_n = 4;
    TEST_ASSERT_TRUE_MESSAGE(
            AssertCall(mock, call_n, "ReadSensor"),
            "Expect call number 5 is ReadSensor."
            )
    uint8_t arg_n = 2; uint16_t num_bytes_to_read = 2;
    TEST_ASSERT_TRUE_MESSAGE(
            AssertArg(mock, call_n, arg_n, &num_bytes_to_read),
            "Expect ReadSensor reads 2 bytes (arg is uint16_t 0x0002)."
            );
}
void old_BridgeGetSensorLED_writes_sensor_reply_to_host(void)
{
    /* =====[ Setup ]===== */
    /* Inject one byte of payload for fake UsbReadBytes. */
    uint8_t good_led_number = led_0;
    uint8_t payload[] = {good_led_number};
    FakeByteArray_ForUsbReadBytes = payload;
    /* Inject Sensor responses. */
    uint8_t sensor_responses[] = {ok, led_green};
    FakeByteArray_ForReadSensor = sensor_responses;
    /* =====[ Operate ]===== */
    BridgeGetSensorLED();
    /* =====[ Test ]===== */
    PrintAllCalls(mock);
    uint8_t call_n; uint8_t arg_n; uint8_t arg_value;
    /* ---Pass first byte of Sensor reply up to host--- */
    call_n = 5;
    TEST_ASSERT_TRUE_MESSAGE(
            AssertCall(mock, call_n, "SerialWriteByte"),
            "Expect call number 6 is SerialWriteByte."
            )
    arg_n = 1; arg_value = sensor_responses[0];
    TEST_ASSERT_TRUE_MESSAGE(
            AssertArg(mock, call_n, arg_n, &arg_value),
            "Expect first byte of Sensor reply is OK (0x00)."
            );
    /* ---Pass second byte of Sensor reply up to host--- */
    call_n++;
    TEST_ASSERT_TRUE_MESSAGE(
            AssertCall(mock, call_n, "SerialWriteByte"),
            "Expect call number 7 is SerialWriteByte."
            )
    arg_n = 1; arg_value = sensor_responses[1];
    TEST_ASSERT_TRUE_MESSAGE(
            AssertArg(mock, call_n, arg_n, &arg_value),
            "Expect second byte of Sensor reply is LED_GREEN (0x01)."
            );
}
