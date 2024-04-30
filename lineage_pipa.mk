#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Rising stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from pipa device
$(call inherit-product, device/xiaomi/pipa/device.mk)

# Device Identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
   RISING_MAINTAINER="ste0090" \
   RISING_CHIPSET="SDM870"    

WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
TARGET_USE_GOOGLE_TELEPHONY := false
TARGET_ENABLE_BLUR := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_EPPE := true
INLINE_KERNEL_BUILDING := true
TARGET_USES_MIUI_DOLBY := false

PRODUCT_NAME := rising_pipa
PRODUCT_DEVICE := pipa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Pad 6

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/pipa/pipa:13/RKQ1.211001.001/V14.0.7.0.TMZCNXM:user/release-keys
