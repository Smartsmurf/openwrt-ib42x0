#
# Copyright (C) 2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define KernelPackage/rtc-gemini
  SUBMENU:=$(OTHER_MENU)
  TITLE:=Gemini RTC driver
  DEPENDS:=@TARGET_ib42x0
  KCONFIG:=CONFIG_RTC_DRV_GEMINI
  FILES:=$(LINUX_DIR)/drivers/rtc/rtc-gemini.ko
  AUTOLOAD:=$(call AutoLoad,05,rtc-gemini)
endef

define KernelPackage/rtc-gemini/description
 Gemini RTC driver
endef

$(eval $(call KernelPackage,rtc-gemini))


define KernelPackage/pata-gemini
  SUBMENU:=$(BLOCK_MENU)
  TITLE:=PATA driver for gemini SoC
  DEPENDS:=@TARGET_ib42x0
  KCONFIG:= CONFIG_PATA_GEMINI
  FILES:=$(LINUX_DIR)/drivers/ata/pata_gemini.ko
  AUTOLOAD:=$(call AutoLoad,01,pata_gemini)
endef

define KernelPackage/pata-gemini/description
 PATA driver for gemini SoC
endef

$(eval $(call KernelPackage,pata-gemini))
