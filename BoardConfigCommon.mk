#
# Copyright (C) 2012 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DZTE_CAMERA_HARDWARE

# Use the non-open-source parts
include device/qcom/msm7x27/BoardConfigCommon.mk

# Target properties
TARGET_SPECIFIC_HEADER_PATH := device/zte/msm7x27-common/include
TARGET_BOOTLOADER_BOARD_NAME := sharp

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/msm7x27-common/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/zte/msm7x27-common/recovery/recovery_keys.c
USE_SET_METADATA := false

# Kernel
TARGET_KERNEL_SOURCE := kernel/zte/msm7x27
BOARD_KERNEL_BASE := 0x02600000

## SELINUX policy version override
ifndef BUILD_WITH_30X_KERNEL	
»       POLICYVERS := 24	
endif

# Provides
BOARD_PROVIDES_LIBRIL := true
TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBLIGHT := true

# FM Radio
#BOARD_USES_STE_FMRADIO := true
#BOARD_HAVE_QCOM_FM := true
#COMMON_GLOBAL_CFLAGS += -DSTE_FM -DQCOM_FM_ENABLED

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Fonts
SMALLER_FONT_FOOTPRINT := true

## TEMPORARY HACK: skip building external/chromium_org/
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
Hack: skip chromium_org building for now
