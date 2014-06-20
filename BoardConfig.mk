LOCAL_PATH := device/lge/p990
TARGET_SPECIFIC_HEADER_PATH := device/lge/p990/include
TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/lge/p990/releasetools/p990-newbl_ota_from_target_files

USE_SET_METADATA := false

# CPU
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t20
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
#TARGET_GCC_VERSION_EXP := 4.8
#TARGET_USE_O3 := true
TARGET_CPU_VARIANT := tegra2
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true
TARGET_BOOTLOADER_BOARD_NAME := p990

# filesystem
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 20
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_HAS_NO_MISC_PARTITION := true

# kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800
#TARGET_KERNEL_SOURCE := kernel/lge/star
#TARGET_KERNEL_CONFIG := cyanogenmod_p990_defconfig

# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/lge/p990/kernel/zImage

# wifi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"

# bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/lge/p990/config/bluetooth/vnd_star.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p990/config/bluetooth
BOARD_BLUETOOTH_LIBBT_VNDCFG := device/lge/p990/config/bluetooth/bt_vendor.conf
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true

# audio
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB 
TARGET_DONT_SET_AUDIO_AAC_FORMAT := true
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true

# camera
BOARD_NEED_OMX_COMPAT := true

# graphics
BOARD_USE_SKIA_LCDTEXT := true
USE_OPENGL_RENDERER := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true

# egl
BOARD_EGL_CFG := device/lge/p990/egl.cfg
BOARD_EGL_NEEDS_FNW := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
MAX_EGL_CACHE_KEY_SIZE := 4096
MAX_EGL_CACHE_SIZE := 2146304
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# fm
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# assert
TARGET_OTA_ASSERT_DEVICE := p990

# ril
BOARD_RIL_CLASS := ../../../device/lge/p990/ril/
BOARD_MOBILEDATA_INTERFACE_NAME := "vsnet0"

# recovery
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/fsl-tegra-udc/gadget/lun%d/file"
TARGET_RECOVERY_PRE_COMMAND := "/system/bin/setup-recovery"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/lge/p990/fstab.star
RECOVERY_FSTAB_VERSION := 2

# sensors
BOARD_SYSFS_LIGHT_SENSOR := "/sys/class/backlight/aat2870-backlight/brightness_mode"
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/lge/p990/vibrator.c

# var
TARGET_ARCH_LOWMEM := true
HAVE_SELINUX := false

# TWRP
TARGET_RECOVERY_INITRC := device/lge/p990/init.recovery.rc
TW_BRIGHTNESS_PATH := /sys/class/backlight/aat2870-backlight/brightness
DEVICE_RESOLUTION := 480x800
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

BOARD_HARDWARE_CLASS := device/lge/p990/cmhw/

BOARD_MALLOC_ALIGNMENT := 16
TARGET_EXTRA_CFLAGS := $(call cc-option,-mtune=cortex-a9) $(call cc-option,-mcpu=cortex-a9)

#define to use all of the Linaro Cortex-A9 optimized string funcs,
#instead of subset known to work on all machines
USE_ALL_OPTIMIZED_STRING_FUNCS := true

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true
