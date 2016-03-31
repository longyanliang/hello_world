#!/bin/sh

rm -rf packages/apps/Launcher3
rm -rf packages/apps/Calculator
rm -rf packages/apps/SoundRecorder

rm -rf vendor/mediatek/proprietary/binary/3rd-party/free/TouchPal
rm -rf vendor/mediatek/proprietary/binary/3rd-party/free/TouchPal_PinyinPack/Android.mk
rm -rf vendor/google/apps/YouTube

cp -vRf --preserve=timestamps ./lava/os/star_ui_v3.0/. ./.
rm -rf packages/apps/Camera
cp -vRf --preserve=timestamps ./lava/lava_camera_2.1/. ./.

#{add by lingbj start
rm -rf packages/apps/LavaPureBackground
rm -rf packages/apps/StarPowerManager
cp -vRf --preserve=timestamps ./lava/os/star_ui_v3.0_power_save/. ./.
#add by lingbj end}

cp -vRf --preserve=timestamps ./lava/lava6735m_sp461/. ./.
rm -rf vendor/google/apps/Videos/Android.mk
rm -rf packages/apps/third_Inmobi/Android.mk
rm -rf packages/apps/OfficeSuite/Android.mk

#star os remove by srboy:replace by lava/android.mk
#cd lava/
#find . -type f -name "*.mk" -exec rm -rf {} \;
#cd ..

echo "开始编译用户版本"
#source build/envsetup.sh
#lunch
#make -j8 2>&1 |tee build.log



