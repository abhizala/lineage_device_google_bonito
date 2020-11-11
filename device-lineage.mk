# Build vendor img
AB_OTA_PARTITIONS += \
    vendor

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true

DEVICE_PACKAGE_OVERLAYS += device/google/bonito/overlay-lineage
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += device/google/bonito/overlay-lineage/lineage-sdk

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# LMK
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lmk.use_psi=true

# Preopt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# RCS
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    PresencePolling \
    RcsService

# Snap
PRODUCT_PACKAGES += Snap

# Utilities
PRODUCT_PACKAGES += \
    libjson \
    libtinyxml

# WiFi
PRODUCT_PACKAGES += \
    libwifi-hal-qcom

WITH_GMS_FI := true

PRODUCT_COPY_FILES += \
    device/google/bonito/permissions/privapp-permissions-aosp-extended.xml:system/etc/permissions/privapp-permissions-aosp-extended.xml

# Build necessary packages for system
PRODUCT_PACKAGES += \
    libmediaplayerservice \
    libstagefright_httplive:64

# Missing vendor packages
PRODUCT_PACKAGES += \
    chre \
    ese_spi_nxp:64 \
    hardware.google.light@1.0.vendor \
    libavservices_minijail_vendor:32 \
    libcodec2_hidl@1.0.vendor:32 \
    libcodec2_vndk.vendor \
    libcppbor.vendor:64 \
    libdrm.vendor \
    libhidltransport.vendor \
    libhwbinder.vendor \
    libkeymaster_messages.vendor:64 \
    libkeymaster_portable.vendor:64 \
    libnetfilter_conntrack:64 \
    libnfnetlink:64 \
    libnos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libnosprotos:64 \
    libnos_transport:64 \
    libpuresoftkeymasterdevice.vendor:64 \
    libsensorndkbridge:64 \
    libsoft_attestation_cert.vendor:64 \
    libteeui_hal_support.vendor:64 \
    libtinycompress \
    libwifi-hal:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64 \
    vendor.display.config@1.0.vendor \
    vendor.display.config@1.1.vendor \
    vendor.display.config@1.2.vendor \
    vendor.display.config@1.3.vendor

# Active Edge
PRODUCT_PACKAGES += \
    ElmyraService
