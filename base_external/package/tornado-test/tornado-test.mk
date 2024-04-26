
##############################################################
#
# TORNADO-TEST
#
##############################################################

TORNADO_TEST_VERSION = b89ed371d0178507814cec229edf6c8bc8dfad1e
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
TORNADO_TEST_SITE = git@github.com:cu-ecen-aeld/final-project-mamo6538.git
TORNADO_TEST_SITE_METHOD = git
TORNADO_TEST_GIT_SUBMODULES = YES

define TORNADO_TEST_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/tornado_test.py $(TARGET_DIR)/etc/tornado_test.py
endef

$(eval $(generic-package))
