$(call inherit-product, device/samsung/p1/p1.mk)

PRODUCT_NAME := full_p1
PRODUCT_DEVICE := p1
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-P1000

TARGET_KERNEL_SOURCE := kernel/samsung/aries
TARGET_KERNEL_CONFIG := cyanogenmod_p1_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7
