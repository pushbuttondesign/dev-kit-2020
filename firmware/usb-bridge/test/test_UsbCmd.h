#ifndef _TEST_USBCMD_H
#define _TEST_USBCMD_H

/* =====[ GetBridgeLED ]===== */
// ReadLedState() -> led_state
// returns OFF, GREEN, or RED
void ReadLedState_returns_OFF_if_LED_is_off(void);
void ReadLedState_returns_GREEN_if_LED_is_on_and_green(void);
void ReadLedState_returns_RED_if_LED_is_on_and_red(void);
// GetBridgeLED()
void GetBridgeLED_waits_for_byte_led_num(void);
void GetBridgeLED_reads_byte_led_num(void);
void GetBridgeLED_writes_two_bytes_to_USB_host(void);
void GetBridgeLED_writes_OK_and_LED_STATE_if_led_num_is_valid(void);
void GetBridgeLED_writes_ERROR_and_pads_second_byte_if_led_num_is_invalid(void);
// SetBridgeLED()
void SetBridgeLED_waits_for_byte_led_num(void);
void SetBridgeLED_reads_byte_led_num(void);
void SetBridgeLED_waits_for_byte_led_setting(void);
void SetBridgeLED_reads_byte_led_setting(void);
void SetBridgeLED_applies_led_setting_and_writes_OK_if_parameters_are_valid(void);
void SetBridgeLED_writes_ERROR_if_led_num_is_invalid(void);
void SetBridgeLED_writes_ERROR_if_led_setting_is_invalid(void);
// GetSensorLED()
void GetSensorLED_waits_for_byte_led_num(void);
void GetSensorLED_reads_byte_led_num(void);
void GetSensorLED_sends_command_to_sensor(void);
void GetSensorLED_sends_led_num_to_sensor(void);
void GetSensorLED_writes_OK_to_indicate_it_sent_the_command_to_the_sensor(void);
void GetSensorLED_waits_for_sensor_to_signal_STATUS_data_ready(void);
void GetSensorLED_reads_status_from_sensor(void);
void GetSensorLED_waits_for_sensor_to_signal_LED_SETTING_data_ready(void);
void GetSensorLED_reads_led_setting_from_sensor(void);
void GetSensorLED_writes_sensor_status(void);
void GetSensorLED_writes_sensor_led_setting(void);
// SetSensorLED()
void SetSensorLED_waits_for_byte_led_num(void);
void SetSensorLED_reads_byte_led_num(void);
void SetSensorLED_waits_for_byte_led_setting(void);
void SetSensorLED_reads_byte_led_setting(void);
void SetSensorLED_sends_command_to_sensor(void);
void SetSensorLED_sends_led_num_to_sensor(void);
void SetSensorLED_sends_led_setting_to_sensor(void);
void SetSensorLED_writes_OK_to_indicate_it_sent_the_command_to_the_sensor(void);
void SetSensorLED_waits_for_sensor_to_signal_STATUS_data_ready(void);
void SetSensorLED_reads_status_from_sensor(void);
void SetSensorLED_writes_sensor_status(void);
// SetSensorConfig()
void SetSensorConfig_waits_for_byte_binning(void);
void SetSensorConfig_reads_byte_binning(void);
void SetSensorConfig_waits_for_byte_gain(void);
void SetSensorConfig_reads_byte_gain(void);
void SetSensorConfig_waits_for_byte_row_bitmap(void);
void SetSensorConfig_reads_byte_row_bitmap(void);
void SetSensorConfig_sends_command_to_sensor(void);
void SetSensorConfig_sends_binning_to_sensor(void);
void SetSensorConfig_sends_gain_to_sensor(void);
void SetSensorConfig_sends_row_bitmap_to_sensor(void);
void SetSensorConfig_writes_OK_to_indicate_it_sent_the_command_to_the_sensor(void);
void SetSensorConfig_waits_for_sensor_to_signal_STATUS_data_ready(void);
void SetSensorConfig_reads_status_from_sensor(void);
void SetSensorConfig_writes_sensor_status(void);
// GetSensorConfig()
void GetSensorConfig_sends_command_to_sensor(void);
void GetSensorConfig_writes_OK_to_indicate_it_sent_the_command_to_the_sensor(void);
void GetSensorConfig_waits_for_sensor_to_signal_STATUS_data_ready(void);
void GetSensorConfig_reads_status_from_sensor(void);
void GetSensorConfig_waits_for_sensor_to_signal_BINNING_data_ready(void);
void GetSensorConfig_reads_binning_from_sensor(void);
void GetSensorConfig_waits_for_sensor_to_signal_GAIN_data_ready(void);
void GetSensorConfig_reads_gain_from_sensor(void);
void GetSensorConfig_waits_for_sensor_to_signal_ROW_BITMAP_data_ready(void);
void GetSensorConfig_reads_row_bitmap_from_sensor(void);
void GetSensorConfig_writes_sensor_status(void);
void GetSensorConfig_writes_sensor_binning(void);
void GetSensorConfig_writes_sensor_gain(void);
void GetSensorConfig_writes_sensor_row_bitmap(void);
// GetExposure()
void GetExposure_sends_command_to_sensor(void);
void GetExposure_writes_OK_to_indicate_it_sent_the_command_to_the_sensor(void);
void GetExposure_waits_for_sensor_to_signal_STATUS_data_ready(void);
void GetExposure_reads_status_from_sensor(void);
void GetExposure_waits_for_sensor_to_signal_EXPOSURE_MSB_data_ready(void);
void GetExposure_reads_exposure_MSB_from_sensor(void);
void GetExposure_waits_for_sensor_to_signal_EXPOSURE_LSB_data_ready(void);
void GetExposure_reads_exposure_LSB_from_sensor(void);
void GetExposure_writes_sensor_status(void);
void GetExposure_writes_exposure_MSB(void);
void GetExposure_writes_exposure_LSB(void);
// SetExposure()
void SetExposure_waits_for_byte_exposure_MSB(void);
void SetExposure_reads_byte_exposure_MSB(void);
void SetExposure_waits_for_byte_exposure_LSB(void);
void SetExposure_reads_byte_exposure_LSB(void);
void SetExposure_sends_command_to_sensor(void);
void SetExposure_sends_exposure_MSB_to_sensor(void);
void SetExposure_sends_exposure_LSB_to_sensor(void);
void SetExposure_writes_OK_to_indicate_it_sent_the_command_to_the_sensor(void);
void SetExposure_waits_for_sensor_to_signal_STATUS_data_ready(void);
void SetExposure_reads_status_from_sensor(void);
void SetExposure_writes_sensor_status(void);
// CaptureFrame()
void CaptureFrame_sends_command_to_sensor(void);
void CaptureFrame_writes_OK_to_indicate_it_sent_the_command_to_the_sensor(void);
void CaptureFrame_waits_for_sensor_to_signal_STATUS_data_ready(void);
void CaptureFrame_reads_status_from_sensor(void);
void CaptureFrame_waits_for_sensor_to_signal_NUM_PIXELS_MSB_data_ready(void);
void CaptureFrame_reads_num_pixels_MSB_from_sensor(void);
void CaptureFrame_waits_for_sensor_to_signal_NUM_PIXELS_LSB_data_ready(void);
void CaptureFrame_reads_num_pixels_LSB_from_sensor(void);
void CaptureFrame_writes_sensor_status(void);
void CaptureFrame_writes_num_pixels_MSB(void);
void CaptureFrame_writes_num_pixels_LSB(void);
void CaptureFrame_returns_if_status_is_not_OK(void);
void CaptureFrame_waits_for_the_next_byte_of_frame_data(void);
void CaptureFrame_writes_the_next_byte_of_frame_data(void);
void CaptureFrame_loops_wait_for_byte_then_write_byte_for_a_total_nbytes_of_2x_num_pixels(void);

#endif // _TEST_USBCMD_H
