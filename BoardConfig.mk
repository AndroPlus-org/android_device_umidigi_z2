#
# Copyright 2017 The Android Open Source Project
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
#

LOCAL_PATH := device/umidigi/z2

# Platform
TARGET_BOARD_PLATFORM := mt6763
TARGET_BOOTLOADER_BOARD_NAME := g36v63c2k_kw
TARGET_NO_BOOTLOADER := true

# Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_CPU_CORTEX_A53 := true

# File System
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Kernel
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x14f88000 --second_offset 0x00e88000 --tags_offset 0x13f88000 --board 1480056755
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage

# Mediatek support
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := Z2

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Resolution
DEVICE_RESOLUTION := 1080x2246
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2246

# Vendor Interface Manifest
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(LOCAL_PATH)/compatibility_matrix.xml

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# TWRP
# TW_DEVICE_VERSION := $(shell date -u +"%Y%m%d_%H%M")
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab
TW_INCLUDE_FB2PNG := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TW_RECOVERY_ADDITIONAL_RELINK_FILES := $(OUT)/system/lib64/libhardware_legacy.so

# Encryption
TW_INCLUDE_CRYPTO := true

TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
