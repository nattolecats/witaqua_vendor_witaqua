# WitAqua-side RRO Overlays
PRODUCT_PACKAGES += \
    WitAquaFrameworksResOverlay \
    WitAquaSystemUIResOverlay \
    WitAquaSettingsResOverlay \
    WitAquaLauncherOverlay \
    WitAquaLineageSetupWizardOverlay \
    WitAquaSetupWizardOverlay \
    WitAquaUpdaterOverlay \
    CertifiedPropsOverlayStub

# Optional
PRODUCT_PACKAGES += \
    DisableCameraSoundOverlay \
    DndLegacyIcons

# Standard Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/witaqua/overlay/common

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    vendor/witaqua/overlay/common

# Overlay defaults
PRODUCT_COPY_FILES += \
    vendor/witaqua/rro_overlays/config-system_ext.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/overlay/config/config.xml \
    vendor/witaqua/rro_overlays/partition_order.xml:$(TARGET_COPY_OUT_PRODUCT)/overlay/partition_order.xml
