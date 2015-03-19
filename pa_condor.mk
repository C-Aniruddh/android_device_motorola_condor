ifeq (pa_condor,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/motorola/condor/full_condor.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := condor
PRODUCT_NAME := pa_condor
PRODUCT_RELEASE_NAME := MOTO E

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=condor TARGET_DEVICE=condor

endif
