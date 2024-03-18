#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common SuperiorExtendedOS  stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from pipa device
$(call inherit-product, device/xiaomi/pipa/device.mk)

TARGET_INCLUDE_MATLOG := false
TARGET_INCLUDE_PIXEL_CHARGER := true
USE_MOTO_CALCULATOR := false
TARGET_SUPPORTS_BLUR := true
USE_MOTO_CLOCK := false
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
USE_QUICKPIC := false
USE_DUCKDUCKGO := false
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true
SUPERIOR_OFFICIAL := false

PRODUCT_NAME := superior_pipa
PRODUCT_DEVICE := pipa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Pad 6

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/pipa/pipa:13/RKQ1.211001.001/V14.0.7.0.TMZCNXM:user/release-keys
