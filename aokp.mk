#
# CyanogenMod product configuration
#

# --------------------------------------------------------------------------------
# Inherit CM stuff
# --------------------------------------------------------------------------------

$(call inherit-product, vendor/aokp/config/gsm.mk)
$(call inherit-product, vendor/aokp/config/common_tablet.mk)

# --------------------------------------------------------------------------------
# Inherit device configuration
# --------------------------------------------------------------------------------

$(call inherit-product, device/samsung/p1/full_p1.mk)

# --------------------------------------------------------------------------------
# override product name - the rest is already defined in full_p1.mk
# --------------------------------------------------------------------------------

PRODUCT_NAME := aokp_p1
