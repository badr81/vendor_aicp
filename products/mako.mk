# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit AICP common bits
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aicp/configs/gsm.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aicp/overlay/mako

# Setup device specific product configuration
PRODUCT_NAME := aicp_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.3/JWR66V/737497:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.3 JWR66V 737497 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
