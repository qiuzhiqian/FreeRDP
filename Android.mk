
LOCAL_PATH:= $(call my-dir)

LOCAL_CFLAGS += -Wno-unused-const-variable \
		-Wno-unused-variable \
		-Wno-unused-parameter \
		-Wno-missing-field-initializers \
		-Wno-int-to-void-pointer-cast \
		-Wno-date-time \
		-mssse3 \
		-Wno-unused-macros \
		-Wno-padded \
		-Wno-c11-extensions \
		-Wno-gnu \
		-Wno-deprecated-declarations

LOCAL_CPPFLAGS += -Wno-deprecated-declarations

include $(LOCAL_PATH)/winpr/Android.mk \
	$(LOCAL_PATH)/libfreerdp/Android.mk \
	$(LOCAL_PATH)/rdtk/Android.mk \
	$(LOCAL_PATH)/channels/Android.mk \
	$(LOCAL_PATH)/server/Android.mk
