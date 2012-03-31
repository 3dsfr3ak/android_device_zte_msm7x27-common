# Copyright (C) 2007 The Android Open Source Project
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

USE_CAMERA_STUB := false

# Arch and board related defines
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
ARCH_ARM_HAVE_VFP := true

# Kernel
BOARD_KERNEL_BASE := 0x02600000

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Browser
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE 

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# CPU
TARGET_FORCE_CPU_UPLOAD := true
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD

# Headers
TARGET_SPECIFIC_HEADER_PATH := device/zte/common/include

# Graphics
TARGET_BOARD_PLATFORM_GPU := adreno200
BOARD_EGL_CFG := device/zte/common/prebuilt/lib/egl/egl.cfg
BOARD_HAS_FLIPPED_SCREEN := true
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS -DREFRESH_RATE=60
TARGET_USES_GENLOCK := false
# msm7x27: no support for overlay, bypass, or c2d
TARGET_USE_OVERLAY := false
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := false
# Allow fallback to ashmem
TARGET_GRALLOC_USES_ASHMEM := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true

# Enable gingerbread compatibility (http://r.cyanogenmod.com/#change,13317)
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

# Skia
BOARD_USE_SKIA_LCDTEXT := true

# FM radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Libs
TARGET_PROVIDES_LIBRIL := true
TARGET_PROVIDES_LIBAUDIO := true

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/zte/common/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/common/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/zte/common/recovery/recovery.rc

# USB 
BOARD_DATA_DEVICE := /dev/block/mtdblock6	
BOARD_DATA_FILESYSTEM := auto  	
BOARD_DATA_FILESYSTEM_OPTIONS := rw	
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock5
BOARD_SYSTEM_FILESYSTEM := auto
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mtdblock4
BOARD_CACHE_FILESYSTEM := auto
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:1
BOARD_SDEXT_DEVICE := /dev/block/vold/179:2
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
