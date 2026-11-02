LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE:= libtermux
LOCAL_SRC_FILES:= termux.c
LOCAL_LDLIBS += -llog
ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
LOCAL_CFLAGS += -O3 -flto=thin -march=armv9.2-a+sve2 -mcpu=cortex-a720
endif
include $(BUILD_SHARED_LIBRARY)
