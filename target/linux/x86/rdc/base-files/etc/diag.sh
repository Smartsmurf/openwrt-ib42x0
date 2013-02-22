#!/bin/sh
# Copyright (C) 2007-2013 OpenWrt.org

. /lib/functions/leds.sh

status_led="rdc321x:dmz"

set_state() {
	case "$1" in
	preinit)
		status_led_on
		;;
	done)
		status_led_off
		;;
	esac
}
