TARGET := iphone:clang:latest:12.2
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FakePictureBypass

FakePictureBypass_FILES = $(shell find Sources/FakePictureBypass -name '*.swift') $(shell find Sources/FakePictureBypassC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
FakePictureBypass_SWIFTFLAGS = -ISources/FakePictureBypassC/include
FakePictureBypass_CFLAGS = -fobjc-arc -ISources/FakePictureBypassC/include

include $(THEOS_MAKE_PATH)/tweak.mk
