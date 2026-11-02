LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := libtermux-bootstrap
LOCAL_SRC_FILES := termux-bootstrap-zip.S termux-bootstrap.c
ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
LOCAL_CFLAGS += -O3 -flto=thin -march=armv9.2-a+sve2 -mcpu=cortex-a720
endif
include $(BUILD_SHARED_LIBRARY)
