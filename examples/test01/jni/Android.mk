LOCAL_PATH := $(call my-dir)
#��ȡ��ǰĿ¼
include $(CLEAR_VARS)
#���һЩ����
LOCAL_MODULE    := tutorial
#Ҫ���ɵĿ���
LOCAL_SRC_FILES := tutorial01.cpp tutorial02.cpp
LOCAL_LDLIBS := -llog 
#���Ӧ��Դ�ļ�
include $(BUILD_SHARED_LIBRARY)
#���ɶ�̬��libtutorial.so

include $(CLEAR_VARS)
#���һЩ����
LOCAL_MODULE    := test
#��������һ�������
LOCAL_SRC_FILES := test01.cpp
#������Ӧ��Դ�ļ�
LOCAL_LDLIBS := -ldl -llog 
LOCAL_SHARED_LIBRARIES := tutorial
#libtest.so��Ҫ���õĿ�libdl.so:���ض�̬������Ҫ��liblog.so ��־��ӡ��Ҫ��Ĭ����system/libĿ¼��
include $(BUILD_SHARED_LIBRARY)
#���ɹ����


include $(CLEAR_VARS)

LOCAL_MODULE    := helloworld

LOCAL_SRC_FILES := helloworld.cpp

LOCAL_LDLIBS := -ldl -llog 

include $(BUILD_EXECUTABLE)


