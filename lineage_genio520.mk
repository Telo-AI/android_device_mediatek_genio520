#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/mediatek/genio520/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_genio520
PRODUCT_DEVICE := genio520
PRODUCT_MANUFACTURER := MediaTek
PRODUCT_BRAND := MediaTek
PRODUCT_MODEL := Genio 520 EVK

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_aiot_64_cn_armv82_wifi-userdebug 15 AP3A.240905.015.A2 61497 test-keys" \
    BuildFingerprint=alps/vnd_aiot8391p2_64_bsp/aiot8391p2_64_bsp:15/AP3A.240905.015.A2/61497:userdebug/test-keys \
    DeviceProduct=aiot8391p2_64_bsp
