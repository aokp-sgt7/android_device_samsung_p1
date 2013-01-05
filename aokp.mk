$(call inherit-product, vendor/aokp/configs/gsm.mk)
$(call inherit-product, vendor/aokp/configs/common_tablet_small.mk)

$(call inherit-product, device/samsung/p1/full_p1.mk)

PRODUCT_NAME := aokp_p1
