PRODUCT_BRAND ?= WitAqua

# Audio
include vendor/witaqua/config/audio.mk

# Packages
include vendor/witaqua/config/packages.mk

# RRO Overlays
include vendor/witaqua/config/rro_overlays.mk

# Themes
include vendor/witaqua/config/themes.mk

# Version
include vendor/witaqua/config/version.mk

# Avoid artifact path requirements
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    $(strip $(shell cat vendor/witaqua/config/artifact_path_requirement_allowed_list.txt))

# Conditionally enable blur
TARGET_USES_BLUR ?= true

ifeq ($(TARGET_USES_BLUR), true)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1
endif

# Permissions
PRODUCT_COPY_FILES += \
    vendor/witaqua/config/privapp-permissions-witaqua-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-witaqua-product.xml
