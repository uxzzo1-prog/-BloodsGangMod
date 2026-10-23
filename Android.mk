LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := BloodsGang
LOCAL_SRC_FILES := main.cpp
LOCAL_LDLIBS    := -llog -landroid
LOCAL_CPPFLAGS  += -std=c++17 -O3
include $(BUILD_SHARED_LIBRARY)
