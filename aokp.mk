#
# CyanogenMod product configuration
#

# --------------------------------------------------------------------------------
# Inherit CM stuff
# --------------------------------------------------------------------------------

$(call inherit-product, vendor/aokp/configs/gsm.mk)
$(call inherit-product, vendor/aokp/configs/common_tablet_small.mk)

# --------------------------------------------------------------------------------
# Inherit device configuration
# --------------------------------------------------------------------------------

$(call inherit-product, device/samsung/p1/full_p1.mk)

# --------------------------------------------------------------------------------
# override product name - the rest is already defined in full_p1.mk
# --------------------------------------------------------------------------------

PRODUCT_NAME := aokp_p1
