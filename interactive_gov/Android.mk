# Copyright (C) 2011 The Android Open Source Project
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

ifeq ($(INTEL_POWER_HAL_INTERACTIVE_GOV),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := power.$(TARGET_PRODUCT)
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw

ifeq ($(POWERHAL_CLV), true)
	LOCAL_SRC_FILES := power_clv.c
endif
ifeq ($(POWERHAL_MFLD), true)
	LOCAL_SRC_FILES := power_mfld.c
endif
ifeq ($(POWERHAL_GI), true)
	LOCAL_SRC_FILES := power_mfld.c
endif
ifeq ($(POWERHAL_MRFLD), true)
	LOCAL_SRC_FILES := power_mrfld.c
endif
ifeq ($(POWERHAL_BYT), true)
	LOCAL_SRC_FILES := power_byt.c
endif

LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif
