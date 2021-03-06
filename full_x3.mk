#
# Copyright (C) 2012 The Android Open-Source Project
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 mdeejay <mdjrussia@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS := device/lge/x3/overlay

# Camera
PRODUCT_PACKAGES := \
    Camera

# Files needed for boot image
PRODUCT_COPY_FILES := \
	device/htc/endeavoru/ramdisk/init.rc:root/init.rc \
	device/htc/endeavoru/ramdisk/init.x3.rc:root/init.x3.rc \
	device/htc/endeavoru/ramdisk/init.x3.usb.rc:root/init.x3.usb.rc \
	device/htc/endeavoru/ramdisk/ueventd.rc:root/ueventd.rc \
	device/htc/endeavoru/ramdisk/ueventd.x3.rc:root/ueventd.x3.rc \
	device/htc/endeavoru/ramdisk/init:root/init


# Prebuilt Audio/GPS/Camera/Wi-Fi configs
PRODUCT_COPY_FILES += \
	device/htc/endeavoru/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
	device/htc/endeavoru/configs/hmconfig.txt:system/etc/hmconfig.txt \
	device/htc/endeavoru/configs/ipc_channels.config:system/etc/ipc_channels.config \
	device/htc/endeavoru/configs/model_frontal.xml:system/etc/model_frontal.xml \
	device/htc/endeavoru/configs/nvcamera.conf:system/etc/nvcamera.conf \
        device/htc/endeavoru/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/htc/endeavoru/configs/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
	device/htc/endeavoru/configs/wfd_rtsp.ini:system/etc/wifi/wfd_rtsp.ini \
	device/htc/endeavoru/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/htc/endeavoru/configs/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf

# Prebuilt Alsa configs
PRODUCT_COPY_FILES += \
	device/htc/endeavoru/usr/share/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
	device/htc/endeavoru/usr/share/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

# Vold.fstab
PRODUCT_COPY_FILES += \
	device/htc/endeavoru/vold.fstab:system/etc/vold.fstab

# Media configs
PRODUCT_COPY_FILES += \
    device/htc/endeavoru/media_codecs.xml:system/etc/media_codecs.xml

# Input device configeration files
PRODUCT_COPY_FILES += \
	device/htc/endeavoru/usr/keylayout/Bluetooth_00_06_66_42.kl:system/usr/keylayout/Bluetooth_00_06_66_42.kl \
	device/htc/endeavoru/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	device/htc/endeavoru/usr/keylayout/osp-input.kl:system/usr/keylayout/osp-input.kl \
	device/htc/endeavoru/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/htc/endeavoru/usr/keylayout/synaptics_T1320.kl:system/usr/keylayout/synaptics_T1320.kl \
	device/htc/endeavoru/usr/keylayout/touch_dev.kl:system/usr/keylayout/touch_dev.kl \
	device/htc/endeavoru/usr/idc/gpio-keys.idc:system/usr/idc/gpio-keys.idc \
	device/htc/endeavoru/usr/idc/MHLRCP.idc:system/usr/idc/MHLRCP.idc \
	device/htc/endeavoru/usr/idc/osp-input.idc:system/usr/idc/osp-input.idc \
	device/htc/endeavoru/usr/idc/synaptics_T1320.idc:system/usr/idc/synaptics_T1320.idc\
	device/htc/endeavoru/usr/idc/tegra-snd-max98088.idc:system/usr/idc/tegra-snd-max98088.idc \
	device/htc/endeavoru/usr/idc/touch_dev.idc:system/usr/idc/touch_dev.idc

# Any prebuilt kernel modules
PRODUCT_COPY_FILES += \
        device/htc/endeavoru/modules/baseband_usb_chr.ko:system/lib/modules/baseband_usb_chr.ko \
        device/htc/endeavoru/modules/bthid.ko:system/lib/modules/bthid.ko \
        device/htc/endeavoru/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko

# lights
PRODUCT_PACKAGES += \
        lights.x3

# Power HAL
PRODUCT_PACKAGES += \
        power.x3

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
        libaudioutils \
        libtinyalsa

# Common
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs \
	l2ping \
	com.android.future.usb.accessory \
	whisperd

# NFC
PRODUCT_PACKAGES += \
	libnfc \
	libnfc_ndef \
	libnfc_jni \
	Nfc \
	Tag \
	com.android.nfc_extras

# Live Wallpapers
PRODUCT_PACKAGES += \
	LiveWallpapers \
	LiveWallpapersPicker \
	VisualizationWallpapers \
	librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

# Torch
PRODUCT_PACKAGES += \
        Torch

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_PACKAGES += send_bug
    PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug
endif

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml)

PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.setupwizard.enable_bypass=1 \
        dalvik.vm.execution-mode=int:jit \
        dalvik.vm.lockprof.threshold=500 \
        dalvik.vm.dexopt-flags=m=y \
	persist.sys.usb.config=mass_storage,adb

# Tegra 3 spacific overrides
PRODUCT_PROPERTY_OVERRIDES += \
	persist.tegra.nvmmlite=1 \
        tf.enable=y

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US xhdpi

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/lge/x3/x3-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
