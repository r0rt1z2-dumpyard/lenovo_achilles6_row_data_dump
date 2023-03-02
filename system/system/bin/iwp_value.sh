
ch=$1
value=$2
iwpriv wlan0 driver "set_pwr_ctrl MySAR_PwrLevel 1 [${ch},${value}]"
