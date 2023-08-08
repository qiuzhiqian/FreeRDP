LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -D HAVE_CONFIG_H
LOCAL_CFLAGS += -D ANDROID

LOCAL_CFLAGS += -Wno-unused-const-variable \
		-Wno-unused-variable \
		-Wno-unused-parameter \
		-Wno-missing-field-initializers \
		-Wno-int-to-void-pointer-cast \
		-Wno-date-time

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES += external/FreeRDP
LOCAL_C_INCLUDES += external/FreeRDP/include 
LOCAL_C_INCLUDES += external/FreeRDP/include/freerdp/server
LOCAL_C_INCLUDES += external/FreeRDP/include/freerdp/codec
LOCAL_C_INCLUDES += external/FreeRDP/winpr/include 
LOCAL_C_INCLUDES += external/FreeRDP/rdtk/include 
LOCAL_C_INCLUDES += external/FreeRDP/channels/audin/client
LOCAL_C_INCLUDES += external/FreeRDP/channels/tsmf/client
LOCAL_C_INCLUDES += external/FreeRDP/channels/ainput/client
LOCAL_C_INCLUDES += external/FreeRDP/channels/ainput/common
LOCAL_C_INCLUDES += external/boringssl/include
LOCAL_C_INCLUDES += external/tinyalsa/include

LOCAL_SRC_FILES := \
    ainput/server/ainput_main.c \
	ainput/client/ainput_main.c \
	audin/server/audin.c \
	cliprdr/client/cliprdr_format.c \
	cliprdr/client/cliprdr_main.c \
	cliprdr/server/cliprdr_main.c \
	disp/client/disp_main.c \
	disp/server/disp_main.c \
	disp_common.c \
	drdynvc/client/drdynvc_main.c \
	drdynvc/server/drdynvc_main.c \
	drive/client/drive_file.c \
	drive/client/drive_main.c \
	echo/client/echo_main.c \
	echo/server/echo_main.c \
	encomsp/client/encomsp_main.c \
	encomsp/server/encomsp_main.c \
	geometry/client/geometry_main.c \
	gfxredir/gfxredir_common.c \
	gfxredir/server/gfxredir_main.c \
	parallel/client/parallel_main.c \
	printer/client/printer_main.c \
	rail/rail_common.c \
	rail/client/rail_main.c \
	rail/client/rail_orders.c \
	rail/server/rail_main.c \
	rdp2tcp/client/rdp2tcp_main.c \
	rdpdr/client/devman.c \
	rdpdr/client/irp.c \
	rdpdr/client/rdpdr_capabilities.c \
	rdpdr/client/rdpdr_main.c \
	rdpdr/server/rdpdr_main.c \
	rdpecam/server/camera_device_enumerator_main.c \
	rdpecam/server/camera_device_main.c \
	rdpei/client/rdpei_main.c \
	rdpei/server/rdpei_main.c \
	rdpei/rdpei_common.c \
	rdpgfx/client/rdpgfx_codec.c \
	rdpgfx/rdpgfx_common.c \
	rdpgfx/server/rdpgfx_main.c \
	rdpsnd/client/rdpsnd_main.c \
	rdpsnd/server/rdpsnd_main.c \
	rdpsnd/common/rdpsnd_common.c \
	remdesk/client/remdesk_main.c \
	remdesk/server/remdesk_main.c \
	serial/client/serial_main.c \
	server/channels.c \
	smartcard/client/smartcard_main.c \
	sshagent/client/sshagent_main.c \
	telemetry/server/telemetry_main.c \
	tsmf/client/tsmf_audio.c \
	tsmf/client/tsmf_codec.c \
	tsmf/client/tsmf_decoder.c \
	tsmf/client/tsmf_ifman.c \
	tsmf/client/tsmf_main.c \
	tsmf/client/tsmf_media.c \
	video/client/video_main.c

LOCAL_SHARED_LIBRARIES := libc libcutils libnetutils libssl libcrypto libwinpr librdtk libfreerdp
LOCAL_MODULE := libfreerdpchannels
include $(BUILD_SHARED_LIBRARY)
