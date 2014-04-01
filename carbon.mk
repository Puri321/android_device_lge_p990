# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit device configuration
$(call inherit-product, device/lge/p990/p990.mk)

# phone
$(call inherit-product, vendor/carbon/config/common_phone.mk)

PRODUCT_NAME := carbon_p990

# Release name and versioning
PRODUCT_RELEASE_NAME := Optimus2X
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p990

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=star_open_eu BUILD_ID=IMM76L BUILD_FINGERPRINT=lge/star_open_eu/star:4.0.4/IMM76L/LG-P990-P99030a.1211302332:user/release-keys PRIVATE_BUILD_DESC="star_open_eu-user 4.0.4 IMM76L LG-P990-P99030a.1211302332 release-keys"
