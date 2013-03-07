# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file includes all definitions that apply only to maguro devices
#
# Anything that is generic to all tuna products should go in the tuna directory
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/samsung/maguro/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES := \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Custom APP
PRODUCT_PACKAGES += \
    AppWidgetPicker \
    Trebuchet \
    CMFileManager \
	BurstItOutWallpapers

# init.d and sysctl
PRODUCT_COPY_FILES += \
    device/samsung/maguro/prebuilt/bin/zipalign:system/bin/zipalign \
    device/samsung/maguro/prebuilt/etc/init.d/02efs:system/etc/init.d/02efs \
    device/samsung/maguro/prebuilt/etc/init.d/03sqlitetweaks:system/etc/init.d/03sqlitetweaks \
    device/samsung/maguro/prebuilt/etc/init.d/04cleaning:system/etc/init.d/04cleaning \
    device/samsung/maguro/prebuilt/etc/init.d/88zipalign:system/etc/init.d/88zipalign \
    device/samsung/maguro/prebuilt/etc/init.d/90bktweaks:system/etc/init.d/90bktweaks \
    device/samsung/maguro/prebuilt/etc/init.d/98VMtweaks:system/etc/init.d/98VMtweaks \
    device/samsung/maguro/prebuilt/etc/init.d/97cleaning2:system/etc/init.d/97cleaning
   
# GPS conf
PRODUCT_COPY_FILES += \
    device/samsung/maguro/prebuilt/etc/gps.conf:system/etc/gps.conf

# Terminal
PRODUCT_COPY_FILES += \
    device/samsung/maguro/prebuilt/app/Term.apk:system/app/Term.apk \
    device/samsung/maguro/prebuilt/lib/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so \

# Modules
# PRODUCT_COPY_FILES += \
#    device/samsung/maguro/prebuilt/lib/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
#    device/samsung/maguro/prebuilt/lib/modules/rpmsg_client_sample.ko:system/lib/modules/rpmsg_client_sample.ko \
#    device/samsung/maguro/prebuilt/lib/modules/rpmsg_server_sample.ko:system/lib/modules/rpmsg_server_sample.ko \
#    device/samsung/maguro/prebuilt/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko

# PowerPen
PRODUCT_COPY_FILES += \
        device/samsung/maguro/prebuilt/app/PowerPen.apk:system/app/PowerPen.apk \
        device/samsung/maguro/prebuilt/lib/libCangjie.so:system/lib/libCangjie.so \
        device/samsung/maguro/prebuilt/lib/libppaswsdk.so:system/lib/libppaswsdk.so \
        device/samsung/maguro/prebuilt/lib/libppdatabase.so:system/lib/libppdatabase.so \
        device/samsung/maguro/prebuilt/lib/libpphomophone.so:system/lib/libpphomophone.so \
        device/samsung/maguro/prebuilt/lib/libpphwrsdk.so:system/lib/libpphwrsdk.so \
        device/samsung/maguro/prebuilt/lib/libpppinyin.so:system/lib/libpppinyin.so \
        device/samsung/maguro/prebuilt/lib/libppzhuyin.so:system/lib/libppzhuyin.so

$(call inherit-product, device/samsung/tuna/device.mk)
$(call inherit-product-if-exists, vendor/samsung/maguro/device-vendor.mk)
