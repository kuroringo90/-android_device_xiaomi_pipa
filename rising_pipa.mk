#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Rising stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# Inherit from pipa device
$(call inherit-product, device/xiaomi/pipa/device.mk)

# Device Identifiers
RISING_MAINTAINER := ste0090
RISING_CHIPSET := SDM870

WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
TARGET_USE_GOOGLE_TELEPHONY := false
TARGET_ENABLE_BLUR := true
TARGET_PREBUILT_PIXEL_LAUNCHER := false
TARGET_FACE_UNLOCK_SUPPORTED := true
#USER_BUILD_NO_CHANGELOG := 1
TARGET_DISABLE_EPPE := true
INLINE_KERNEL_BUILDING := true

PRODUCT_NAME := rising_pipa
PRODUCT_DEVICE := pipa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Pad 6

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/pipa/pipa:13/RKQ1.211001.001/V14.0.7.0.TMZCNXM:user/release-keys
