TARGET := iphone:clang:latest:6.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = FakePictureBypass_client

FakePictureBypass_client_FILES = main.m
FakePictureBypass_client_CFLAGS = -fobjc-arc
FakePictureBypass_client_CODESIGN_FLAGS = -Sentitlements.plist
FakePictureBypass_client_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
