#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# API levels
PRODUCT_SHIPPING_API_LEVEL := 35

# Characteristics
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Dalvik
$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)

# Overlays
PRODUCT_PACKAGES += \
    FrameworkOverlayGenio520

# Permissions
PRODUCT_COPY_FILES += \
    device/mediatek/genio520/configs/permissions/excluded_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/excluded_hardware.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/mediatek/genio520

$(call inherit-product, device/mediatek/mt8189-common/mt8189.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/mediatek/genio520/genio520-vendor.mk)
