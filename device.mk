#
# Copyright (C) 2016 The CyanogenMod Project
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

COMMON_PATH := device/xiaomi/markw/product

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Include common product fragments
include $(COMMON_PATH)/common/ant.mk
include $(COMMON_PATH)/common/audio.mk
include $(COMMON_PATH)/common/bluetooth-le.mk
include $(COMMON_PATH)/common/consumerir.mk
include $(COMMON_PATH)/common/fingerprint.mk
include $(COMMON_PATH)/common/gello.mk
include $(COMMON_PATH)/common/gps.mk
include $(COMMON_PATH)/common/lights.mk
include $(COMMON_PATH)/common/media.mk
include $(COMMON_PATH)/common/snap.mk
include $(COMMON_PATH)/common/wifi.mk

# Include QCOM product fragments
include $(COMMON_PATH)/qcom/audio.mk
include $(COMMON_PATH)/qcom/cne.mk
include $(COMMON_PATH)/qcom/display.mk
include $(COMMON_PATH)/qcom/fm.mk
include $(COMMON_PATH)/qcom/media.mk
include $(COMMON_PATH)/qcom/power.mk

# Include Cyanogen product fragments
include $(COMMON_PATH)/cyanogen/livedisplay.mk

# Include device-specific product fragments
include $(LOCAL_PATH)/product/specific/*.mk

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/xiaomi/markw/markw-vendor.mk)
