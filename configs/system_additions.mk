# Copyright (C) 2016 The Pure Nexus Project
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

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/bin/sysinit:system/bin/sysinit

# PureNexus-specific init file
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/etc/init.purenexus.rc:root/init.purenexus.rc \
    vendor/nexus/prebuilt/etc/00banner:system/etc/init.d/00banner

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/nexus/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/nexus/prebuilt/bin/50-base.sh:system/addon.d/50-base.sh \

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    persist.service.adb.enable=1

# Enable Storage manager
PRODUCT_PROPERTY_OVERRIDES += \
    ro.storage_manager.enabled=1

# Disable HDCP check
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.wfd.nohdcp=1

# Disable lock rotation on SetupWizard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.rotation_locked=true

# Disable atlas service at start-up to save memory
PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_atlas=true

# Copy APNs
 PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Snap Camera
PRODUCT_PACKAGES += \
    SnapdragonCamera

# Unbreak videorecording with Snap Camera
PRODUCT_PROPERTY_OVERRIDES += \
	persist.camera.cpp.duplication=false

# DU Utils Library
PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

# Superuser
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/common/superuser/su:root/sbin/su \
    vendor/nexus/prebuilt/common/superuser/init.superuser.rc:root/init.superuser.rc

PRODUCT_PACKAGES += \
    Superuser

# Init.d script support
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/nexus/prebuilt/common/etc/init.d.rc:root/init.d.rc

# Damn, build masquerade

PRODUCT_PACKAGES += \
    masquerade

