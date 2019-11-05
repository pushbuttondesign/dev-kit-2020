#ifndef _TEST_SENSORVIS_H
#define _TEST_SENSORVIS_H

void SetUp_GetSensorLED(void); void TearDown_GetSensorLED(void);
void GetSensorLED_receives_led_number(void);
void GetSensorLED_always_replies_with_two_bytes(void);
void GetSensorLED_replies_msg_status_error_if_led_does_not_exist(void);
void GetSensorLED_replies_msg_status_ok_if_led_number_is_recognized(void);
void GetSensorLED_replies_led_off_if_led_is_off(void);
void GetSensorLED_replies_led_green_if_led_is_green(void);
void GetSensorLED_replies_led_red_if_led_is_red(void);

void test_lib_SensorVis_can_use_lib_Queue_and_sees_SpiFifo(void);
void test_Queue_lib_examples_of_push_and_pop(void);
void test_Queue_lib_example_of_push_wrap_around(void);
void GetSensorLED_sends_no_additional_bytes_if_msg_status_is_error(void);
void GetSensorLED_sends_led_status_byte_after_sending_msg_status_ok(void);
void SetUp_SetSensorLED(void);
void TearDown_SetSensorLED(void);
void SetSensorLED_receives_led_number_and_led_state_from_Bridge(void);
void SetSensorLED_replies_with_one_byte(void);
void SetSensorLED_replies_msg_status_error_if_led_number_is_not_valid(void);
void SetSensorLED_replies_msg_status_error_if_led_state_is_not_valid(void);
void SetSensorLED_replies_msg_status_ok_if_led_number_and_led_state_are_valid(void);
void SetSensorLED_turns_off_led_if_payload_is_led_off(void);
void SetSensorLED_turns_led_on_and_green_if_payload_is_led_green(void);
void SetSensorLED_turns_led_on_and_red_if_payload_is_led_red(void);
void SetUp_GetSensorConfig(void);
void TearDown_GetSensorConfig(void);
void GetSensorConfig_sends_msg_status_ok_to_Bridge(void);
void GetSensorConfig_sends_three_bytes_of_data_to_Bridge_after_sending_ok(void);
void SetUp_SetSensorConfig(void);
void TearDown_SetSensorConfig(void);
void SetSensorConfig_receives_three_bytes_of_config_from_Bridge(void);
void SetSensorConfig_replies_msg_status_error_if_binning_is_invalid(void);
void SetSensorConfig_replies_msg_status_error_if_gain_is_invalid(void);
void SetSensorConfig_replies_msg_status_error_if_active_rows_is_invalid(void);
void SetSensorConfig_replies_msg_status_ok_if_all_config_bytes_are_valid(void);
void SetSensorConfig_converts_three_data_bytes_to_a_28_bit_config(void);
void SetUp_GetExposure(void);
void TearDown_GetExposure(void);
void GetExposure_sends_two_bytes_of_exposure_time_most_significant_byte_first(void);
void GetExposure_sends_status_byte_ok(void);
void SetUp_SetExposure(void);
void TearDown_SetExposure(void);
void SetExposure_receives_two_bytes_of_exposure_msb_first_from_Bridge(void);
void SetExposure_replies_msg_status_ok(void);
void SetExposure_converts_two_data_bytes_to_new_16_bit_exposure_ticks_value(void);
void SetUp_CaptureFrame(void);
void TearDown_CaptureFrame(void);
void CaptureFrame_sends_status_byte_ok(void);

#endif // _TEST_SENSORVIS_H
