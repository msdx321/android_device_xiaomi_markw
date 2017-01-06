#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/markw
COMMON_PATH := device/xiaomi/markw/board

# Define platform before including any common things
include $(DEVICE_PATH)/PlatformConfig.mk

# Inherit common ARM64 board fragments
include $(COMMON_PATH)/common/arm64/architecture.mk
include $(COMMON_PATH)/common/arm64/binder.mk

# Inherit common board fragments
include $(COMMON_PATH)/common/bluetooth.mk
include $(COMMON_PATH)/common/bootloader.mk
include $(COMMON_PATH)/common/camera.mk
include $(COMMON_PATH)/common/clang.mk
include $(COMMON_PATH)/common/cpusets.mk
include $(COMMON_PATH)/common/dlmalloc.mk
include $(COMMON_PATH)/common/gps.mk
include $(COMMON_PATH)/common/recovery.mk
include $(COMMON_PATH)/common/sepolicy.mk

# Inherit QCOM board fragments
include $(COMMON_PATH)/qcom/bluetooth.mk
include $(COMMON_PATH)/qcom/bootloader.mk
include $(COMMON_PATH)/qcom/cne.mk
include $(COMMON_PATH)/qcom/encryption.mk
include $(COMMON_PATH)/qcom/fm.mk
include $(COMMON_PATH)/qcom/gps.mk
include $(COMMON_PATH)/qcom/per-mgr.mk
include $(COMMON_PATH)/qcom/platform.mk
include $(COMMON_PATH)/qcom/power.mk
include $(COMMON_PATH)/qcom/ril.mk
include $(COMMON_PATH)/qcom/sepolicy.mk
include $(COMMON_PATH)/qcom/time.mk

# Inherit Cyanogen board fragments
include $(COMMON_PATH)/cyanogen/hardware.mk

# Inherit device-specific board fragments
include $(DEVICE_PATH)/board/specific/*.mk

# Inherit the proprietary files
-include vendor/xiaomi/markw/BoardConfigVendor.mk
