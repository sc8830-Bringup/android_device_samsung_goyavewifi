# Copyright (C) 2017 The Lineage Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := device/samsung/goyavewifi

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from vendor tree
$(call inherit-product-if-exists, vendor/samsung/goyavewifi/goyavewifi-vendor.mk)

# Inherit from scx30g-common device configuration
$(call inherit-product, device/samsung/scx30g-common/common.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/ist30xx_ts_input.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ist30xx_ts_input.kl \
	$(LOCAL_PATH)/keylayout/samsung-keypad.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/samsung-keypad.kl \
	$(LOCAL_PATH)/keylayout/sci-keypad.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sci-keypad.kl

# Media
PRODUCT_PACKAGES += \
	media_profiles_V1_0.xml

PRODUCT_PROPERTY_OVERRIDES += \
	media.stagefright.legacyencoder=true \
	media.stagefright.less-secure=true

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/media/mediaserver.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/mediaserver.rc

# RIL
#PRODUCT_PACKAGES += \
#	rild.rc

# sdcardfs
PRODUCT_PROPERTY_OVERRIDES += \
#	ro.sys.sdcardfs=true

# Camera
PRODUCT_PACKAGES += \
	camera.sc8830

# Sensors
PRODUCT_PACKAGES += \
	sensors.sc8830

# WiFi
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_goyavewifi
PRODUCT_DEVICE := goyavewifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T113NU
