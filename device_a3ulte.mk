$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/a3ulte/a3ulte-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/a3ulte/overlay

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# System Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8916 \
    audio.r_submix.default \
    audio.usb.default \
    libqcompostprocbundle \
    libqcomvisualizer \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/a3ulte/audio/acdb/Bluetooth_cal.acdb:system/etc/acdbdata/QRD/Bluetooth_cal.acdb \
    device/samsung/a3ulte/audio/acdb/General_cal.acdb:system/etc/acdbdata/QRD/General_cal.acdb \
    device/samsung/a3ulte/audio/acdb/Global_cal.acdb:system/etc/acdbdata/QRD/Global_cal.acdb \
    device/samsung/a3ulte/audio/acdb/Handset_cal.acdb:system/etc/acdbdata/QRD/Handset_cal.acdb \
    device/samsung/a3ulte/audio/acdb/Hdmi_cal.acdb:system/etc/acdbdata/QRD/Hdmi_cal.acdb \
    device/samsung/a3ulte/audio/acdb/Headset_cal.acdb:system/etc/acdbdata/QRD/Headset_cal.acdb \
    device/samsung/a3ulte/audio/acdb/Speaker_cal.acdb:system/etc/acdbdata/QRD/Speaker_cal.acdb \
    device/samsung/a3ulte/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/samsung/a3ulte/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/a3ulte/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/samsung/a3ulte/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf

# ANT+

# Camera
PRODUCT_PACKAGES += \
    camera.msm8916 \
    libmm-qcamera

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# CRDA
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libtinyxml \
    memtrack.msm8916

# Filesystem
PRODUCT_PACKAGES += \
    e2fsck \
    make_ext4fs \
    setup_fs

# FM
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# GPS
PRODUCT_PACKAGES += \
    gps.msm8916

PRODUCT_COPY_FILES += \
    device/samsung/a3ulte/gps/flp.conf:system/etc/flp.conf \
    device/samsung/a3ulte/gps/gps.conf:system/etc/gps.conf \
    device/samsung/a3ulte/gps/sap.conf:system/etc/sap.conf

# IRSC
PRODUCT_COPY_FILES += \
    device/samsung/a3ulte/configs/sec_config:system/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    device/samsung/a3ulte/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/a3ulte/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
#     frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    device/samsung/a3ulte/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/a3ulte/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    libdashplayer \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

# Sensor HAL
PRODUCT_PACKAGES += \
    calmodule.cfg \
    libcalmodule_akm.so \
    libcalmodule_common \
    sensors.msm8916

# QC PROPRIETARY
ifneq ($(QCPATH),)
# proprietary wifi display, if available
PRODUCT_BOOT_JARS += WfdCommon

# Connectivity Engine support
ifeq ($(BOARD_USES_QCNE),true)
PRODUCT_PACKAGES += \
    services-ext \
    init.cne.rc

PRODUCT_PROPERTY_OVERRIDES +=
    persist.cne.feature=4

endif
endif

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc \
    init.carrier.rc \
    init.traget.rc


# RIL
PRODUCT_PACKAGES += \
    libxml2

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    libwcnss_qmi \
    wcnss_service

PRODUCT_PACKAGES += \
    hostapd_default.conf \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    device/samsung/a3ulte/configs/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/samsung/a3ulte/configs/hostapd.conf:system/etc/hostapd/hostapd_default.conf \
    device/samsung/a3ulte/configs/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/samsung/a3ulte/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/samsung/a3ulte/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    device/samsung/a3ulte/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/samsung/a3ulte/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/samsung/a3ulte/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/a3ulte/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    device/samsung/a3ulte/twrp.fstab:recovery/root/etc/twrp.fstab \
 device/samsung/a3ulte/dummy:dummy

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_a3ulte
PRODUCT_DEVICE := a3ulte
