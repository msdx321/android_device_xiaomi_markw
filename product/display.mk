# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# HWUI overrides
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Ambient display
PRODUCT_PACKAGES += \
    CMDoze

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609 \
    ro.sf.lcd_density=480
