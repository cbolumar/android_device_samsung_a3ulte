## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := a3ulte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a3ulte/device_a3ulte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a3ulte
PRODUCT_NAME := cm_a3ulte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := a3ulte
PRODUCT_MANUFACTURER := samsung
