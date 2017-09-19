#
# Copyright (C) 2016 The CyanogenMod Project
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
#

# Inherit some common HEXAGON stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/vivalto3mve/device_vivalto3mve.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
	device/samsung/vivalto3mve/overlay \
	device/samsung/vivalto3mve/overlay_cm \

# Override build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device identifier
PRODUCT_DEVICE := vivalto3mve
PRODUCT_NAME := hexagon_vivalto3mve
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G318HZ
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=vivalto3mvexx \
    TARGET_DEVICE=vivalto3mve \
    PRIVATE_BUILD_DESC="vivalto3mvexx-user 4.4.4 KOT49H G318HZXXU0APB2 release-keys" \
    BUILD_FINGERPRINT="samsung/vivalto3mvexx/vivalto3mve:4.4.4/KOT49H/G318HZXXU0APB2:user/release-keys"
