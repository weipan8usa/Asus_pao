lynx "http://192.168.1.106/get_camera_params.cgi?user=admin&pwd=" -dump
lynx "http://192.168.1.106/camera_control.cgi?param=1&value=100&user=admin&pwd="  -dump
lynx "http://192.168.1.106/reboot.cgi?&user=admin&pwd="  -dump              
lynx "http://192.168.1.106/set_misc.cgi?ptz_center_onstart=0&user=admin&pwd=9056980207" -dump # stopcamera moving around when you reboot it
