#
# Copyright (C) 2022 FlamingoOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
   hardware/dolby

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += hardware/dolby/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += hardware/dolby/sepolicy/dolby/private

# Dolby Props
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.dolby.dax.version=DAX3_3.6.1.6_r1 \
    ro.vendor.audio.dolby.dax.version=DAX3_3.6 \
    ro.vendor.audio.dolby.dax.support=true \
    ro.vendor.audio.dolby.surround.enable=true

# Dolby Effects Props
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.audio.delta.refresh=true
  
# Media C2 Vendor
PRODUCT_PACKAGES += \
    libcodec2_hidl@1.0.vendor \
    libcodec2_soft_common.vendor \
    libstagefright_softomx.vendor

# Dolby VNDK
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v33/arm/arch-arm-armv7-a-neon/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_foundation-v33.so \
    prebuilts/vndk/v33/arm64/arch-arm64-armv8-a/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_foundation-v33.so
     
# DaxUI and daxService
PRODUCT_PACKAGES += \
    DaxUI \
    daxService \
    manifest_vendor.dolby.hardware.dms
    
# Proprietary blobs
PRODUCT_COPY_FILES += \
    hardware/dolby/proprietary/system_ext/etc/sysconfig/config-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxappui.xml \
    hardware/dolby/proprietary/system_ext/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxservice.xml \
    hardware/dolby/proprietary/system_ext/etc/sysconfig/hiddenapi-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/hiddenapi-com.dolby.daxservice.xml \
    hardware/dolby/proprietary/system_ext/etc/permissions/privapp-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxappui.xml \
    hardware/dolby/proprietary/system_ext/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxservice.xml \
    hardware/dolby/proprietary/system/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib/vendor.dolby.hardware.dms@2.0.so \
    hardware/dolby/proprietary/system/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/vendor.dolby.hardware.dms@2.0.so \
    hardware/dolby/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    hardware/dolby/proprietary/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    hardware/dolby/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
    hardware/dolby/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    hardware/dolby/proprietary/vendor/etc/media_codecs_kona_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_kona_vendor.xml \
    hardware/dolby/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    hardware/dolby/proprietary/vendor/lib/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdeccfg.so \
    hardware/dolby/proprietary/vendor/lib/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ac4dec.so \
    hardware/dolby/proprietary/vendor/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ddpdec.so \
    hardware/dolby/proprietary/vendor/lib/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefrightdolby.so \
    hardware/dolby/proprietary/vendor/lib/soundfx/libhwdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libhwdap.so \
    hardware/dolby/proprietary/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
    hardware/dolby/proprietary/vendor/lib/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswgamedap.so \
    hardware/dolby/proprietary/vendor/lib/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswvqe.so \
    hardware/dolby/proprietary/vendor/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@2.0.so \
    hardware/dolby/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    hardware/dolby/proprietary/vendor/lib64/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdeccfg.so \
    hardware/dolby/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    hardware/dolby/proprietary/vendor/lib64/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_ac4dec.so \
    hardware/dolby/proprietary/vendor/lib64/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_ddpdec.so \
    hardware/dolby/proprietary/vendor/lib64/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefrightdolby.so \
    hardware/dolby/proprietary/vendor/lib64/soundfx/libhwdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libhwdap.so \
    hardware/dolby/proprietary/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
    hardware/dolby/proprietary/vendor/lib64/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswgamedap.so \
    hardware/dolby/proprietary/vendor/lib64/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswvqe.so \
    hardware/dolby/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
    hardware/dolby/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so
    
#LDAC/LHDC Blobs
PRODUCT_COPY_FILES += \
    hardware/dolby/ldac/lib/libldacBT_abr.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libldacBT_abr.so \
    hardware/dolby/ldac/lib/libldacBT_enc.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libldacBT_enc.so \
    hardware/dolby/ldac/lib/liblhdc.so:$(TARGET_COPY_OUT_SYSTEM)/lib/liblhdc.so \
    hardware/dolby/ldac/lib/liblhdcBT_enc.so:$(TARGET_COPY_OUT_SYSTEM)/lib/liblhdcBT_enc.so \
    hardware/dolby/ldac/lib/liblhdcv5.so:$(TARGET_COPY_OUT_SYSTEM)/lib/liblhdcv5.so \
    hardware/dolby/ldac/lib/liblhdcv5BT_enc.so:$(TARGET_COPY_OUT_SYSTEM)/lib/liblhdcv5BT_enc.so \
    hardware/dolby/ldac/lib64/libldacBT_abr.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libldacBT_abr.so \
    hardware/dolby/ldac/lib64/libldacBT_enc.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libldacBT_enc.so \
    hardware/dolby/ldac/lib64/liblhdc.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/liblhdc.so \
    hardware/dolby/ldac/lib64/liblhdcBT_enc.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/liblhdcBT_enc.so \
    hardware/dolby/ldac/lib64/liblhdcv5.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/liblhdcv5.so \
    hardware/dolby/ldac/lib64/liblhdcv5BT_enc.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/liblhdcv5BT_enc.so 
