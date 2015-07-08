USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/a3ulte/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

TARGET_BOOTLOADER_BOARD_NAME := a3ulte
TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2575302656
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12727595008
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# BOARD_CUSTOM_BOOTIMG_MK := device/samsung/a3ulte/mkbootimg.mk

TARGET_KERNEL_SOURCE := kernel/samsung/a3ulte
TARGET_KERNEL_CONFIG := msm8916_sec_defconfig 
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_a3u_eur_defconfig
# TARGET_PREBUILT_KERNEL := device/samsung/a3ulte/kernel
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true 
DEVICE_RESOLUTION := 540x960
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
