#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common Lineage configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

# Project Matrixx
MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := alanpdk
MATRIXX_CHIPSET := SM4450
MATRIXX_BATTERY := 5000mAh
MATRIXX_DISPLAY := 1080x2460
# Gapps
WITH_GMS := true

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# Blur effect
TARGET_ENABLE_BLUR := true

# Quick TAP
TARGET_SUPPORTS_QUICK_TAP := true

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := lineage_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi
	
# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
