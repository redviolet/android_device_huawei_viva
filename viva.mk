$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/viva/viva-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/viva/overlay
# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
LOCAL_PATH := device/huawei/viva


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


#Ramdisk

PRODUCT_COPY_FILES += \
    device/huawei/viva/ramdisk/init.rc:root/init.rc \
    device/huawei/viva/ramdisk/init.viva.rc:root/init.viva.rc \
    device/huawei/viva/ramdisk/init.viva.usb.rc:root/init.viva.usb.rc \
    device/huawei/viva/ramdisk/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/huawei/viva/ramdisk/ueventd.rc:root/ueventd.rc \
    device/huawei/viva/ramdisk/fstab.viva:root/fstab.viva \
    device/huawei/viva/ramdisk/ueventd.viva.rc:root/ueventd.viva.rc


#idc
PRODUCT_COPY_FILES += \
    device/huawei/viva/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/huawei/viva/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/huawei/viva/idc/syn_tm12xx_ts_1.idc:system/usr/idc/syn_tm12xx_ts_1.idc \
    device/huawei/viva/idc/syn_tm12xx_ts_2.idc:system/usr/idc/syn_tm12xx_ts_2.idc



#keychars
PRODUCT_COPY_FILES += \
    device/huawei/viva/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/huawei/viva/keychars/omap4-keypad.kcm:system/usr/keychars/omap4-keypad.kcm \
    device/huawei/viva/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/huawei/viva/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/huawei/viva/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm


PRODUCT_COPY_FILES += \
		     device/huawei/viva/hw/gralloc.default.so:system/lib/hw/gralloc.default.so


#keylayout
PRODUCT_COPY_FILES += \
    device/huawei/viva/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/viva/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/viva/keylayout/omap4-keypad.kl:system/usr/keylayout/omap4-keypad.kl \
    device/huawei/viva/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/huawei/viva/keylayout/twl6030_pwrbutton.kl:system/usr/keylayout/twl6030_pwrbutton.kl \
    device/huawei/viva/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/huawei/viva/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/huawei/viva/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/huawei/viva/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/huawei/viva/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/huawei/viva/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    device/huawei/viva/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/huawei/viva/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.k

#audio
PRODUCT_COPY_FILES += \
   device/huawei/viva/audio/huawei/audio/cm_viva_audio_config.conf:/system/etc/huawei/audio/cm_viva_audio_config.conf \
   device/huawei/viva/audio/huawei/audio/U9200_audio_config.conf:/system/etc/huawei/audio/U9200_audio_config.conf \
   device/huawei/viva/audio/huawei/audio/U9200_audio_config_dl2_NotSupport.conf:/system/etc/huawei/audio/U9200_audio_config_dl2_NotSupport.conf \
   device/huawei/viva/audio/huawei/audio/U9200E_audio_config.conf:/system/etc/huawei/audio/U9200E_audio_config.conf \
   device/huawei/viva/audio/huawei/audio/U9200E_audio_config_dl2_NotSupport.conf:/system/etc/huawei/audio/U9200E_audio_config_dl2_NotSupport.conf \
   device/huawei/viva/audio/huawei/audio/U9200E_factory_audio_config.conf:/system/etc/huawei/audio/U9200E_factory_audio_config.conf \
   device/huawei/viva/audio/huawei/audio/U9200E_factory_audio_config_dl2_NotSupport.conf:/system/etc/huawei/audio/U9200E_factory_audio_config_dl2_NotSupport.conf \
   device/huawei/viva/audio/huawei/audio/U9200_factory_audio_config.conf:/system/etc/huawei/audio/U9200_factory_audio_config.conf \
   device/huawei/viva/audio/huawei/audio/U9200_factory_audio_config_dl2_NotSupport.conf:/system/etc/huawei/audio/U9200_factory_audio_config_dl2_NotSupport.conf \
   device/huawei/viva/audio/huawei/audio/viva_audio_config.conf:/system/etc/huawei/audio/viva_audio_config.conf \
   device/huawei/viva/audio/huawei/audio/viva_audio_config_dl2_NotSupport.conf:/system/etc/huawei/audio/viva_audio_config_dl2_NotSupport.conf \
   device/huawei/viva/audio/huawei/audio/viva_factory_audio_config.conf:/system/etc/huawei/audio/viva_factory_audio_config.conf \
   device/huawei/viva/audio/huawei/audio/viva_factory_audio_config_dl2_NotSupport.conf:/system/etc/huawei/audio/viva_factory_audio_config_dl2_NotSupport.conf


#bluetooth



#bluetooth
PRODUCT_COPY_FILES += \
    device/huawei/viva/bluetooth/init.bcm.chip_off.sh:system/etc/bluetooth/init.bcm.chip_off.sh \
    device/huawei/viva/BCM4330B1.hcd:system/vendor/firmware/BCM4330B1.hcd \
    device/huawei/viva/bluetooth/init.bcm.chip_on.sh:system/etc/bluetooth/init.bcm.chip_on.sh
#configs
PRODUCT_COPY_FILES += \
    device/huawei/viva/configs/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/viva/configs/gpsconfig.xml:system/etc/gpsconfig.xml \
    device/huawei/viva/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/viva/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/viva/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/viva/configs/vold.fstab:system/etc/vold.fstab \
    device/huawei/viva/configs/powervr.ini:system/etc/powervr.ini \
    device/huawei/viva/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

#Modules



PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

PRODUCT_PACKAGES += \
		    hcitool
# Packages
PRODUCT_PACKAGES := \
    com.android.future.usb.accessory \
    Torch 


PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=RIL \
    mobiledata.interfaces=pdp0,wlan0,gprs,ppp0,rmnet0 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    persist.sys.timezone=Asia/Shanghai \
    persist.sys.language=zh \
    persist.sys.country=CN \

# Filesystem management tools
PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    e2fsck \
    setup_fs


PRODUCT_PACKAGES += \
    libbt-brcm_bta \
    libbt-brcm_gki \
    libbt-hci \
    bluetooth.default \
    libbt-brcm_stack \
    libbt-utils


# Live Wallpapers
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    librs_jni
# Live Wallpapers
PRODUCT_PACKAGES += \
	libaudioutils \
	sdcard \
	libnetcmdiface


PRODUCT_PACKAGES -= \
	Superuser


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Feature live wallpaper
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
#ext permissions
PRODUCT_COPY_FILES += \
    device/huawei/viva/permissions/android.hardware.faketouch.multitouch.distinct.xml:system/etc/permissions/android.hardware.faketouch.multitouch.distinct.xml \
    device/huawei/viva/permissions/android.hardware.faketouch.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.faketouch.multitouch.jazzhand.xml \
    device/huawei/viva/permissions/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    device/huawei/viva/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    device/huawei/viva/permissions/android.hardware.screen.landscape.xml:system/etc/permissions/android.hardware.screen.landscape.xml \
    device/huawei/viva/permissions/android.hardware.screen.portrait.xml:system/etc/permissions/android.hardware.screen.portrait.xml \
    device/huawei/viva/permissions/com.ti.fm.fmradioif.xml:system/etc/permissions/com.ti.fm.fmradioif.xml \
    device/huawei/viva/permissions/com.ti.s3d.xml:system/etc/permissions/com.ti.s3d.xml

#ext frameworks 
PRODUCT_COPY_FILES += \
    device/huawei/viva/framework/fmradioif.jar:system/framework/fmradioif.jar








PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    hwui.render_dirty_regions=true


# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1


PRODUCT_LOCALES := zh_CN zh_TW en_US 



PRODUCT_TAGS += dalvik.gc.type-precise


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1



$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
#$(call inherit-product-if-exists, hardware/ti//omap4xxx/omap4.mk)
$(call inherit-product-if-exists, vendor/huawei/viva/viva-vendor.mk)
$(call inherit-product-if-exists, vendor/anzhi/packages.mk)
