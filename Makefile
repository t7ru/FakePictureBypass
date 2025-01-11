TARGET := iphone:clang:latest:6.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = FakePictureBypass

FakePictureBypass_FILES = t71XPC.m t71XPCServiceDelegate.m main.m
FakePictureBypass_CFLAGS = -fobjc-arc
FakePictureBypass_CODESIGN_FLAGS = -Sentitlements.plist
FakePictureBypass_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk

after-FakePictureBypass-stage::
	$(ECHO_NOTHING)$(FAKEROOT) chown root:wheel $(THEOS_STAGING_DIR)/Library/LaunchDaemons/com.t7rutweaks.fakepicturebypass.plist$(ECHO_END)
