# Release name
PRODUCT_RELEASE_NAME := goyavewifi

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_mini_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := goyavewifi
PRODUCT_NAME := lineage_goyavewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T113NU
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

# Stock build fingerprint
BUILD_FINGERPRINT := "samsung/goyavewifixx/goyavewifi:4.4.4/KTU84P/T113XXS0AQC2:user/release-keys"
PRIVATE_BUILD_DESC := "goyavewifixx-user 4.4.4 KTU84P T113XXS0AQC2 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.fingerprint=$(BUILD_FINGERPRINT)
