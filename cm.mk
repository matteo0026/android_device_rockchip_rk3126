# Copyright (C) 2013 OmniROM Project
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

# Inherit from the common Open Source product configuration
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/cm/config/common.mk)

$(call inherit-product, device/rockchip/rk3126/full_rk3126.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rk3126
PRODUCT_NAME := rk3126
TARGET_DEVICE := cm_rk3126
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := rk3126
PRODUCT_MANUFACTURER := rockchip

# Set build fingerprint / ID / Product Name ect.
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT=791/791/791:5.1.1/LMY47V/zhangxy09081838:eng/test-keys \
	PRIVATE_BUILD_DESC="rk312x-eng 5.1.1 LMY47V eng.zhangxy.20161228.183742 test-keys"
endif
