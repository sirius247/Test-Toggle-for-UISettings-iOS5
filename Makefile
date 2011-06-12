include ./theos/makefiles/common.mk
LOCAL_INSTALL_PATH = /Library/UISettings/
LIBRARY_NAME = UIToggle-Test
UIToggle-Test_FILES = UIToggle-test.xm
UIToggle-Test_PRIVATE_FRAMEWORKS=UIKit CoreGraphics
include $(THEOS_MAKE_PATH)/library.mk
