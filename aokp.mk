
$(call inherit-product, vendor/aokp/configs/gsm.mk)
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)
$(call inherit-product, device/samsung/p1/full_p1.mk)

# kernel
TARGET_KERNEL_SOURCE := kernel/samsung/p1
TARGET_KERNEL_CONFIG := cyanogenmod_p1_defconfig

PRODUCT_NAME := aokp_p1
