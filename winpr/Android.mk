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
LOCAL_C_INCLUDES += bionic/libc/include
LOCAL_C_INCLUDES += external/boringssl
LOCAL_C_INCLUDES += external/boringssl/include/openssl
LOCAL_C_INCLUDES += external/FreeRDP
LOCAL_C_INCLUDES += external/FreeRDP/include 
LOCAL_C_INCLUDES += external/FreeRDP/winpr/include 
LOCAL_C_INCLUDES += external/FreeRDP/winpr/include/winpr
LOCAL_C_INCLUDES += external/FreeRDP/winpr/libwinpr/crt
LOCAL_C_INCLUDES += external/FreeRDP/winpr/libwinpr/utils
LOCAL_C_INCLUDES += external/FreeRDP/winpr/libwinpr/utils/trio
LOCAL_C_INCLUDES += external/FreeRDP/winpr/libwinpr/utils/wlog
LOCAL_C_INCLUDES += external/boringssl/include

#LOCAL_LDLIBS += -lpthread 

LOCAL_SRC_FILES := \
	libwinpr/bcrypt/bcrypt.c \
	libwinpr/clipboard/clipboard.c \
	libwinpr/clipboard/synthetic.c \
	libwinpr/clipboard/synthetic_file.c \
	libwinpr/com/com.c \
	libwinpr/comm/comm.c \
	libwinpr/comm/comm_io.c \
	libwinpr/comm/comm_ioctl.c \
	libwinpr/comm/comm_sercx2_sys.c \
	libwinpr/comm/comm_sercx_sys.c \
	libwinpr/comm/comm_serial_sys.c \
	libwinpr/crt/alignment.c \
	libwinpr/crt/buffer.c \
	libwinpr/crt/conversion.c \
	libwinpr/crt/memory.c \
	libwinpr/crt/string.c \
	libwinpr/crt/unicode_android.c \
	libwinpr/crt/unicode_builtin.c \
	libwinpr/crt/unicode.c \
	libwinpr/crt/unicode_icu.c \
	libwinpr/crypto/cert.c \
	libwinpr/crypto/crypto.c \
	libwinpr/crypto/crypto.c \
	libwinpr/crypto/hash.c \
	libwinpr/crypto/hmac_md5.c \
	libwinpr/crypto/md4.c \
	libwinpr/crypto/md5.c \
	libwinpr/crypto/rand.c \
	libwinpr/crypto/rc4.c \
	libwinpr/dsparse/dsparse.c \
	libwinpr/dummy.c \
	libwinpr/environment/environment.c \
	libwinpr/error/error.c \
	libwinpr/file/file.c \
	libwinpr/file/generic.c \
	libwinpr/file/namedPipeClient.c \
	libwinpr/file/pattern.c \
	libwinpr/handle/handle.c \
	libwinpr/handle/nonehandle.c \
	libwinpr/input/keycode.c \
	libwinpr/input/scancode.c \
	libwinpr/input/virtualkey.c \
	libwinpr/interlocked/interlocked.c \
	libwinpr/io/device.c \
	libwinpr/io/io.c \
	libwinpr/library/library.c \
	libwinpr/memory/memory.c \
	libwinpr/ncrypt/ncrypt.c \
	libwinpr/nt/nt.c \
	libwinpr/nt/ntstatus.c \
	libwinpr/path/path.c \
	libwinpr/path/shell.c \
	libwinpr/pipe/pipe.c \
	libwinpr/pool/callback.c \
	libwinpr/pool/callback_cleanup.c \
	libwinpr/pool/cleanup_group.c \
	libwinpr/pool/io.c \
	libwinpr/pool/pool.c \
	libwinpr/pool/synch.c \
	libwinpr/pool/timer.c \
	libwinpr/pool/work.c \
	libwinpr/registry/registry.c \
	libwinpr/registry/registry_reg.c \
	libwinpr/rpc/rpc.c \
	libwinpr/security/security.c \
	libwinpr/shell/shell.c \
	libwinpr/smartcard/smartcard.c \
	libwinpr/smartcard/smartcard_inspect.c \
	libwinpr/smartcard/smartcard_pcsc.c \
	libwinpr/smartcard/smartcard_winscard.c \
	libwinpr/sspi/sspi.c \
	libwinpr/sspi/sspi_export.c \
	libwinpr/sspi/sspi_gss.c \
	libwinpr/sspi/sspi_winpr.c \
	libwinpr/sspi/CredSSP/credssp.c \
	libwinpr/sspi/Kerberos/kerberos.c \
	libwinpr/sspi/Kerberos/krb5glue_heimdal.c \
	libwinpr/sspi/Kerberos/krb5glue_mit.c \
	libwinpr/sspi/Negotiate/negotiate.c \
	libwinpr/sspi/NTLM/ntlm_av_pairs.c \
	libwinpr/sspi/NTLM/ntlm.c \
	libwinpr/sspi/NTLM/ntlm_compute.c \
	libwinpr/sspi/NTLM/ntlm_message.c \
	libwinpr/sspi/Schannel/schannel.c \
	libwinpr/sspi/Schannel/schannel_openssl.c \
	libwinpr/sspicli/sspicli.c \
	libwinpr/synch/address.c \
	libwinpr/synch/barrier.c \
	libwinpr/synch/condition.c \
	libwinpr/synch/critical.c \
	libwinpr/synch/event.c \
	libwinpr/synch/init.c \
	libwinpr/synch/mutex.c \
	libwinpr/synch/pollset.c \
	libwinpr/synch/semaphore.c \
	libwinpr/synch/sleep.c \
	libwinpr/synch/timer.c \
	libwinpr/synch/wait.c \
	libwinpr/sysinfo/sysinfo.c \
	libwinpr/sysinfo/cpufeatures/cpu-features.c \
	libwinpr/thread/apc.c \
	libwinpr/thread/argv.c \
	libwinpr/thread/process.c \
	libwinpr/thread/processor.c \
	libwinpr/thread/thread.c \
	libwinpr/thread/tls.c \
	libwinpr/timezone/timezone.c \
	libwinpr/timezone/TimeZones.c \
	libwinpr/timezone/WindowsZones.c \
	libwinpr/utils/android.c \
	libwinpr/utils/asn1/asn1.c \
	libwinpr/utils/cmdline.c \
	libwinpr/utils/debug.c \
	libwinpr/utils/image.c \
	libwinpr/utils/ini.c \
	libwinpr/utils/ntlm.c \
	libwinpr/utils/print.c \
	libwinpr/utils/sam.c \
	libwinpr/utils/ssl.c \
	libwinpr/utils/stream.c \
	libwinpr/utils/winpr.c \
	libwinpr/utils/collections/ArrayList.c \
	libwinpr/utils/collections/BitStream.c \
	libwinpr/utils/collections/BufferPool.c \
	libwinpr/utils/collections/CountdownEvent.c \
	libwinpr/utils/collections/HashTable.c \
	libwinpr/utils/collections/LinkedList.c \
	libwinpr/utils/collections/ListDictionary.c \
	libwinpr/utils/collections/MessagePipe.c \
	libwinpr/utils/collections/MessageQueue.c \
	libwinpr/utils/collections/ObjectPool.c \
	libwinpr/utils/collections/PubSub.c \
	libwinpr/utils/collections/Queue.c \
	libwinpr/utils/collections/Stack.c \
	libwinpr/utils/collections/StreamPool.c \
	libwinpr/utils/corkscrew/debug.c \
	libwinpr/utils/execinfo/debug.c \
	libwinpr/utils/lodepng/lodepng.c \
	libwinpr/utils/trio/trio.c \
	libwinpr/utils/trio/trionan.c \
	libwinpr/utils/trio/triostr.c \
	libwinpr/utils/wlog/Appender.c \
	libwinpr/utils/wlog/BinaryAppender.c \
	libwinpr/utils/wlog/CallbackAppender.c \
	libwinpr/utils/wlog/ConsoleAppender.c \
	libwinpr/utils/wlog/DataMessage.c \
	libwinpr/utils/wlog/FileAppender.c \
	libwinpr/utils/wlog/ImageMessage.c \
	libwinpr/utils/wlog/JournaldAppender.c \
	libwinpr/utils/wlog/Layout.c \
	libwinpr/utils/wlog/Message.c \
	libwinpr/utils/wlog/PacketMessage.c \
	libwinpr/utils/wlog/SyslogAppender.c \
	libwinpr/utils/wlog/UdpAppender.c \
	libwinpr/utils/wlog/wlog.c \
	libwinpr/winsock/winsock.c \
	libwinpr/wtsapi/wtsapi.c \

LOCAL_SHARED_LIBRARIES := libc libcutils libnetutils libdl libssl libcrypto liblog
LOCAL_MODULE := libwinpr
include $(BUILD_SHARED_LIBRARY)
