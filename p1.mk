DEVICE_PACKAGE_OVERLAYS := device/samsung/p1/overlay

$(call inherit-product, device/samsung/p1-common/device_base.mk)
$(call inherit-product-if-exists, vendor/samsung/p1/p1-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/p1/init.p1.rc:root/init.p1.rc \
	device/samsung/p1/ueventd.p1.rc:root/ueventd.p1.rc \
	device/samsung/p1-common/init.recovery.rc:root/init.recovery.p1.rc

# vold
PRODUCT_COPY_FILES += \
        device/samsung/p1/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# RIL
# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Device-specific packages
PRODUCT_PACKAGES += \
	SamsungServiceMode

#PRODUCT_PACKAGES += \
#	hdmi.s5pc110

# Build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
       ro.telephony.call_ring.delay=3000 \
       ro.telephony.call_ring.absent=true \
       mobiledata.interfaces=pdp0,wlan0,gprs \
       ro.telephony.ril.v3=icccardstatus,datacall,signalstrength,facilitylock \
       ro.ril.enable.managed.roaming=1 \
       ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
       ro.ril.emc.mode=2 \
       rild.libpath=/system/lib/libsec-ril.so \
       rild.libargs=-d/dev/ttyS0 \
       ro.phone_storage=1 \
       ro.additionalmounts=/storage/sdcard1 \
       ro.vold.switchablepair=/storage/sdcard0,/storage/sdcard1 \
       persist.sys.vold.switchexternal=1

PRODUCT_COPY_FILES += \
	device/samsung/p1/p1ln.sh:p1ln.sh

# set recovery.fstab location (needed for p1l & p1n products)
TARGET_RECOVERY_FSTAB := device/samsung/p1/recovery.fstab

# --------------------------------------------------------------------------------
# define common P1 product settings
# --------------------------------------------------------------------------------

# Set build fingerprint / ID / product name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
       PRODUCT_NAME=GT-P1000 \
       TARGET_DEVICE=GT-P1000 \
       BUILD_FINGERPRINT=samsung/GT-P1000/GT-P1000:2.3.5/GINGERBREAD/XXJVT:user/release-keys \
       PRIVATE_BUILD_DESC="GT-P1000-user 2.3.5 GINGERBREAD XXJVT release-keys"
