# Copyright (C) 2024 WitAqua
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

PRODUCT_VERSION_MAJOR := 3
PRODUCT_VERSION_MINOR := 2

# Versioning System
WITAQUA_BUILD_TYPE ?= UNOFFICIAL
WITAQUA_BUILD_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)

# Build version props
PRODUCT_PRODUCT_PROPERTIES += \
    ro.witaqua.build.version=$(WITAQUA_BUILD_VERSION) \
    ro.witaqua.build.type=$(WITAQUA_BUILD_TYPE)

# Device info
WITAQUA_PROCESSOR_INFO ?= Unknown

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.witaqua_processor_info=$(subst $() ,_,$(WITAQUA_PROCESSOR_INFO)) \
    persist.sys.device_camera_info_rear=$(WITAQUA_CAMERA_REAR_INFO) \
    persist.sys.device_camera_info_front=$(WITAQUA_CAMERA_FRONT_INFO)

# Internal version
LINEAGE_VERSION := WitAqua-$(PLATFORM_VERSION).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(LINEAGE_BUILD)-v$(WITAQUA_BUILD_VERSION)-$(WITAQUA_BUILD_TYPE)

# Display version
LINEAGE_DISPLAY_VERSION := $(LINEAGE_VERSION)
