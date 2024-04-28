
##############################################################
#
# HBS-APP
#
##############################################################

HBS_APP_VERSION = 3a2fdf5a2688b2907ff5c42aaf61e69f63fb95c8
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
HBS_APP_SITE = git@github.com:cu-ecen-aeld/final-project-mamo6538.git
HBS_APP_SITE_METHOD = git
HBS_APP_GIT_SUBMODULES = YES

define HBS_APP_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/hbs_master_3b.py $(TARGET_DIR)/usr/bin/hbs_master_3b.py
	$(INSTALL) -m 0755 $(@D)/hbs_master_4b.py $(TARGET_DIR)/usr/bin/hbs_master_4b.py
	$(INSTALL) -m 0755 $(@D)/hbs_master.py $(TARGET_DIR)/usr/bin/hbs_master.py
	$(INSTALL) -m 0755 $(@D)/hbs_master_demo.py $(TARGET_DIR)/usr/bin/hbs_master_demo.py
	$(INSTALL) -m 0755 $(@D)/PetMonitorPro_webGUI.html $(TARGET_DIR)/usr/bin/PetMonitorPro_webGUI.html
endef

$(eval $(generic-package))
