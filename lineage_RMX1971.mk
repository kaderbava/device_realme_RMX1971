#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AxionOS stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX1971 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Axion-ify!
AXION_CAMERA_REAR_INFO := 48,8,2,2
AXION_CAMERA_FRONT_INFO := 16
AXION_MAINTAINER := Kader_Bava
AXION_PROCESSOR := Qualcomm_Snapdragon_712_AIE
PERF_ANIM_OVERRIDE := true
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
GPU_FREQS_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/available_frequencies
GPU_MIN_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/min_freq
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

# Lineage prebuilts
ifneq ($(WITH_GMS),true)
TARGET_INCLUDES_LOS_PREBUILTS := true
endif

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX1971
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMX1971
PRODUCT_MODEL := RMX1971

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX1971-user 11 RKQ1.201217.002 1623376276806 release-keys" \
    BuildFingerprint=realme/RMX1971/RMX1971:11/RKQ1.201217.002/1623376276806:user/release-keys \
    DeviceName=RMX1971 \
    DeviceProduct=RMX1971 \
    SystemDevice=RMX1971 \
    SystemName=RMX1971

# Sign builds
PRODUCT_DEFAULT_DEV_CERTIFICATE := .android-certs/releasekey
