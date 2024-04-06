################################################################################
#
#python-rpi.gpio
#
################################################################################

PYTHON_RPI.GPIO_VERSION = 0.7.1
PYTHON_RPI.GPIO_SOURCE = RPI.GPIO-$(PYTHON_RPI.GPIO_VERSION).tar.gz
PYTHON_RPI.GPIO_SITE = https://files.pythonhosted.org/packages/c4/0f/10b524a12b3445af1c607c27b2f5ed122ef55756e29942900e5c950735f2
PYTHON_RPI.GPIO_SETUP_TYPE = setuptools
PYTHON_RPI.GPIO_LICENSE = MIT
PYTHON_RPI.GPIO_LICENSE_FILES = LICENSE

$(eval $(python-package))