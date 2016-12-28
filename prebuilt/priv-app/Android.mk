LOCAL_PATH := $(call my-dir)

# Install GoogleDialer
include $(CLEAR_VARS)
LOCAL_MODULE := GoogleDialer
LOCAL_SRC_FILES := GoogleDialer/GoogleDialer.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := false
include $(BUILD_PREBUILT)

# Install KernelAdiutor
include $(CLEAR_VARS)
LOCAL_MODULE := KernelAdiutor
LOCAL_SRC_FILES := KernelAdiutor/KernelAdiutor.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

# Install NexusLauncherIcons
include $(CLEAR_VARS)
LOCAL_MODULE := NexusLauncherIcons
LOCAL_SRC_FILES := NexusLauncherIcons/NexusLauncherIcons.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := false
include $(BUILD_PREBUILT)

# Install NexusWallpapers
include $(CLEAR_VARS)
LOCAL_MODULE := NexusWallpapers
LOCAL_SRC_FILES := NexusWallpapers/NexusWallpapers.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := false
include $(BUILD_PREBUILT)

# Install PixelLauncher
include $(CLEAR_VARS)
LOCAL_MODULE := PixelLauncher
LOCAL_SRC_FILES := PixelLauncher/NexusLauncherPrebuilt.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := false
include $(BUILD_PREBUILT)

# Install WallpaperPicker
include $(CLEAR_VARS)
LOCAL_MODULE := WallpaperPicker
LOCAL_SRC_FILES := WallpaperPicker/WallpaperPickerGooglePrebuilt.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := false
include $(BUILD_PREBUILT)



