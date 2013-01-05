$(call inherit-product, device/samsung/p1/p1.mk)

# Release name
PRODUCT_RELEASE_NAME := P1

# Device identifier. This must come after all inclusions
PRODUCT_NAME := full_p1
PRODUCT_DEVICE := p1
PRODUCT_MODEL := GT-P1000

# asserts
TARGET_OTA_ASSERT_DEVICE := galaxytab,$(PRODUCT_MODEL)

PRODUCT_BUILD_PROP_OVERRIDES += \
       PRODUCT_NAME=GT-P1000 \
       TARGET_DEVICE=GT-P1000 \
       BUILD_FINGERPRINT=samsung/GT-P1000/GT-P1000:2.3.5/GINGERBREAD/XXJVT:user/release-keys \
       PRIVATE_BUILD_DESC="GT-P1000-user 2.3.5 GINGERBREAD XXJVT release-keys"
