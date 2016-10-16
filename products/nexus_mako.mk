# Copyright (C) 2015 The Pure Nexus Project
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

# Include Pure Nexus telephony configuration
include vendor/nexus/configs/nexus_phone.mk

# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Override AOSP build properties
PRODUCT_NAME := nexus_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Pixel XL
PRODUCT_MANUFACTURER := LGE

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/mako/mako:7.0/NRD90U/3155372:user/release-keys \
    PRIVATE_BUILD_DESC="mako-user 7.0 NRD90U 3155372 release-keys"

# Set a proper title for kernel build
export LOCALVERSION=-NeXus4ever-Basic-Nougat-Kernel-r01

