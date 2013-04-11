USE_CAMERA_STUB := true
# inherit from the proprietary version
-include vendor/huawei/viva/BoardConfigVendor.mk
WITH_DEXPREOPT := false
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := omap4
TARGET_SPECIFIC_HEADER_PATH := device/huawei/overlay/include
TARGET_BOOTLOADER_BOARD_NAME := viva
TARGET_BOARD_INFO_FILE ?= device/huawei/viva/board-info.txt
BOARD_EGL_CFG := device/huawei/viva/configs/egl.cfg
BOARD_KERNEL_CMDLINE := console=ttyGS2,115200n8 mem=1G vmalloc=768M vram=16M omapfb.vram=0:8M omap_wdt.timer_margin=30 mmcparts=mmcblk0:p15(splash) androidboot.hardware=viva
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_FORCE_RAMDISK_ADDRESS := 0x81000000
TARGET_OMAP4 := true
BOARD_USE_YUV422I_DEFAULT_COLORFORMAT := true
BOARD_USES_OVERLAY := true
COMMON_GLOBAL_CFLAGS += -DTARGET_OMAP4 -DOMAP_COMPAT -DBINDER_COMPAT -DMR0_AUDIO_BLOB

BUILD_WITH_ALSA_UTILS := true

HARDWARE_OMX := true
DEVICE_RESOLUTION := 540x960

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAS_JANKY_BACKBUFFER := true
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

WITH_DEXPREOPT := false
BOARD_USE_SCREENCAP := true

# OMAP
BOARD_HAVE_OLD_ION_API := true
OMAP_ENHANCEMENT := true
#ENHANCED_DOMX := true

ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
endif
# OMX
#HARDWARE_OMX := true
#ifdef HARDWARE_OMX
#OMX_JPEG := true
#OMX_VENDOR := ti
#OMX_VENDOR_INCLUDES := \
  hardware/ti/omx/system/src/openmax_il/omx_core/inc \
  hardware/ti/omx/image/src/openmax_il/jpeg_enc/inc
#OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
#BOARD_OPENCORE_LIBRARIES := libOMX_Core
#BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
#endif
USE_OPENGL_RENDERER := true
BOARD_USE_SCREENCAP := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
WITH_DEXPREOPT := false
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 685768704
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14539537408
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_PREBUILT_KERNEL := device/huawei/viva/kernel
TARGET_PROVIDES_INIT_RC := true
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH :="/sys/class/android_usb/android0/f_mass_storage/lun/file"

BOARD_UMS_LUNFILE :="/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/viva/bluetooth
