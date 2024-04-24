
##############################################################
#
# HBS-APP
#
##############################################################

HBS_APP_VERSION = 5af9ee8de08a6485f854f607b7a1abecb36e22b2
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
	$(INSTALL) -m 0755 $(@D)/PetMonitorPro_webGUI.html $(TARGET_DIR)/usr/bin/PetMonitorPro_webGUI.html
endef

$(eval $(generic-package))
