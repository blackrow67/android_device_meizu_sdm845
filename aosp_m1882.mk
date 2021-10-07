#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from m1882 device
$(call inherit-product, device/meizu/sdm845/m1882/m1882.mk)

# Inherit some common PixelPlusUI stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Credits to XiNGRZ

PRODUCT_NAME := aosp_m1882
PRODUCT_BRAND := Meizu
PRODUCT_DEVICE := m1882
PRODUCT_MANUFACTURER := Meizu
PRODUCT_MODEL := 16th

# FOD Animation
EXTRA_FOD_ANIMATIONS := true

#PPUI Stuff
TARGET_FACE_UNLOCK_SUPPORTED = true
CUSTOM_BUILD_TYPE=OFFICIAL
TARGET_GAPPS_ARCH := arm64

#PPUI Props
PRODUCT_PROPERTY_OVERRIDES += \
ro.ppui.device_name=Meizu 16TH \
ro.ppui.version=3.10 \
ro.ppui.version_code=Azrael \
ro.ppui.is_official=true \
ro.ppui.maintainer_name=dogukangunacti

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="16th" \
    PRODUCT_NAME="meizu_16th_CN" \
    PRIVATE_BUILD_DESC="meizu_16th_CN-user 10 QKQ1.191222.002 1594833800 release-keys"

BUILD_FINGERPRINT := meizu/qssi/qssi:10/QKQ1.191222.002/1594833800:user/release-keys

