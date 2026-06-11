#
# Copyright (C) 2024 WitAqua
#
# SPDX-License-Identifier: Apache-2.0
#

# Icons
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/witaqua/themes/icons/CustomIcons

# Icon shapes
PRODUCT_PACKAGES += \
    IconShapeRoundedRectRoundedOverlay

# Fonts
PRODUCT_PACKAGES += \
    FontGoogleSansOverlay

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/witaqua/prebuilts/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)

$(call inherit-product, external/mejiro/fonts.mk)
