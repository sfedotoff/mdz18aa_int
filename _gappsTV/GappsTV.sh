#!/system/bin/sh

echo "-----------------------------------------------"
echo "---------- System apps localization, ----------"
echo "-------------- bloatware cleaning, ------------"
echo "---------- Installing Google GappsTV ----------"
echo "-------------------- for ----------------------"
echo "--- Xiaomi Mi TV Box 3 Enhanced (MDZ-18-AA) ---"
echo "---------- originally by Neoyurik -------------"
echo "----------------- and Ichir0 ------------------"
echo "------------- remake by larstas ---------------"
echo "-------------- version 1.5.16 -----------------"
echo "-----------------------------------------------"

mount -o rw,remount /system
# Configuration
DIRsd=sdcard/MDZ18AA_1.5.16/2_GAPPSTV
# End of configuration

# Removing bloatware/unnecessary apps
rm -r -f /system/app/{Music,QuickSearchBox,TWeather,VoiceControl}
rm -r -f /system/priv-app/{MiTVGallery,TVManager,TVSmartScreenSaver}
rm -r -f /system/vendor/app/{AdServer,AppUpgrade,BaiduCloud,CloudAlbum,cm-sdk-release,DeviceReport,DlnaTVService,duokantv,jiajia-jianshenfang_T6,MiBoxLockScreen,MiGallery,MiGameCenterSDKService,Mipay,MiTVAdvertise,MiTVAppStore,MiTVAssistantManual,MiTVCommentService,MiTVDesktop,MiTVDownload,MiTvGameCenter,mitvmediaplayer,MiTVPay,MiTVPayment,MiTVPinyinIME,MiTVService,MiTVShop,MiTVStat,MiTVUpgrade,NameService,SearchCenter,SmartHome,SmartHomeTV,SogouInput,TVPushService}
echo "Unneeded/bloatware apps removed"

# Copying localized apps
cp -r /$DIRsd/systemloc/app/* /system/app
chmod 00755 /system/app/{Bluetooth,Browser,Calendar,CaptivePortalLogin,CertInstaller,DocumentsUI,DownloadProviderUi,Gallery2,HTMLViewer,KeyChain,LeanbackIme,MiTVSettings2,SoundRecorder,UserDictionaryProvider}
chmod 00644 /system/app/{Bluetooth/Bluetooth.apk,Browser/Browser.apk,Calendar/Calendar.apk,CaptivePortalLogin/CaptivePortalLogin.apk,CertInstaller/CertInstaller.apk,DocumentsUI/DocumentsUI.apk,DownloadProviderUi/DownloadProviderUi.apk,Gallery2/Gallery2.apk,HTMLViewer/HTMLViewer.apk,KeyChain/KeyChain.apk,LeanbackIme/LeanbackIme.apk,MiTVSettings2/MiTVSettings2.apk,SoundRecorder/SoundRecorder.apk,UserDictionaryProvider/UserDictionaryProvider.apk}
echo "Localized apps copied to /system/app"

# Copying localized priv-app
cp -r /$DIRsd/systemloc/priv-app/* /system/priv-app
chmod 00755 /system/priv-app/{BackupRestoreConfirmation,CalendarProvider,ContactsProvider,DownloadProvider,FusedLocation,InputDevices,ManagedProvisioning,MediaProvider,Settings,SettingsProvider,Shell,SystemUI,TelephonyProvider,VpnDialogs,WallpaperCropper}
chmod 00644 /system/priv-app/{BackupRestoreConfirmation/BackupRestoreConfirmation.apk,CalendarProvider/CalendarProvider.apk,ContactsProvider/ContactsProvider.apk,DownloadProvider/DownloadProvider.apk,FusedLocation/FusedLocation.apk,InputDevices/InputDevices.apk,ManagedProvisioning/ManagedProvisioning.apk,MediaProvider/MediaProvider.apk,Settings/Settings.apk,SettingsProvider/SettingsProvider.apk,Shell/Shell.apk,SystemUI/SystemUI.apk,TelephonyProvider/TelephonyProvider.apk,VpnDialogs/VpnDialogs.apk,WallpaperCropper/WallpaperCropper.apk}
echo "Localized apps copied to /system/priv-app"

# Copying localized vendor/app
cp -r /$DIRsd/systemloc/vendor/app/* /system/vendor/app
chmod 00755 /system/vendor/app/{AirkanTVService,MiMusic2,MiTVMediaExplorer,MiTVMediaExplorerDaemon,mitvmediaplayer,MiTVMultiCast,MiTVSettingsProvider,MiTVSystemUI,MiTVUserView,PhotoSlideShow,PushService,RemoteControllerService,UDTService,XiaomiServiceFramework,XMAccountAuth,XMAccountManager}
chmod 00644 /system/vendor/app/{AirkanTVService/AirkanTVService.apk,MiMusic2/MiMusic2.apk,MiTVMediaExplorer/MiTVMediaExplorer.apk,MiTVMediaExplorerDaemon/MiTVMediaExplorerDaemon.apk,mitvmediaplayer/mitvmediaplayer.apk,MiTVMultiCast/MiTVMultiCast.apk,MiTVSettingsProvider/MiTVSettingsProvider.apk,MiTVSystemUI/MiTVSystemUI.apk,MiTVUserView/MiTVUserView.apk,PhotoSlideShow/PhotoSlideShow.apk,PushService/PushService.apk,RemoteControllerService/RemoteControllerService.apk,UDTService/UDTService.apk,XiaomiServiceFramework/XiaomiServiceFramework.apk,XMAccountAuth/XMAccountAuth.apk,XMAccountManager/XMAccountManager.apk}
echo "Localized apps copied to /system/vendor/app"

# Copying fonts
cp -r /$DIRsd/systemloc/fonts/* /system/fonts
chmod 00644 /system/fonts/*
echo "Localized fonts copied to /system/fonts"

# Copying Google apps to app dir
cp -r /$DIRsd/system/app/* /system/app
chmod 00755 /system/app/{Backdrop,FuguPairingTutorial,GoogleTTS,GoogleTTS/lib,GoogleTTS/lib/arm,LandscapeWallpaper,NoTouchAuthDelegate,SecondScreenSetup,SecondScreenSetupAuthBridge,TvVoiceInput,VoiceControl,YouTubeLeanback,YouTubeLeanback/lib,YouTubeLeanback/lib/arm}
chmod 00644 /system/app/{Backdrop/Backdrop.apk,FuguPairingTutorial/FuguPairingTutorial.apk,GoogleTTS/GoogleTTS.apk,GoogleTTS/lib/arm/*.so,LandscapeWallpaper/LandscapeWallpaper.apk,NoTouchAuthDelegate/NoTouchAuthDelegate.apk,SecondScreenSetup/SecondScreenSetup.apk,SecondScreenSetupAuthBridge/SecondScreenSetupAuthBridge.apk,TvVoiceInput/TvVoiceInput.apk,VoiceControl/VoiceControl.apk,YouTubeLeanback/YouTubeLeanback.apk,YouTubeLeanback/lib/arm/*.so}
echo "Google apps for /system/app copied"

# Copying Google apps to priv-app
cp -r /$DIRsd/system/priv-app/* /system/priv-app
chmod 00755 /system/priv-app/{AndroidMediaShell,AndroidMediaShell/lib,AndroidMediaShell/lib/arm,AtvWidget,AtvRemoteService,ConfigUpdater,GlobalKeyInterceptor,GoogleBackupTransport,GoogleServicesFramework,Katniss,Katniss/lib,Katniss/lib/arm,LeanbackLauncher,MediaExplorer,Overscan,PhoneskyKamikazeCanvas,PrebuiltGmsCorePano,PrebuiltGmsCorePano/lib,PrebuiltGmsCorePano/lib/arm,PrebuiltGmsCorePano/lib/arm64,SetupWraith,TV,TV/lib,TV/lib/arm,TvProvider,TvSettings}
chmod 00644 /system/priv-app/{AndroidMediaShell/AndroidMediaShell.apk,AndroidMediaShell/lib/arm/*.so,AtvWidget/AtvWidget.apk,AtvRemoteService/AtvRemoteService.apk,ConfigUpdater/ConfigUpdater.apk,GlobalKeyInterceptor/GlobalKeyInterceptor.apk,GoogleBackupTransport/GoogleBackupTransport.apk,GoogleServicesFramework/GoogleServicesFramework.apk,Katniss/Katniss.apk,Katniss/lib/arm/*.so,LeanbackLauncher/LeanbackLauncher.apk,MediaExplorer/MediaExplorer.apk,Overscan/Overscan.apk,PhoneskyKamikazeCanvas/PhoneskyKamikazeCanvas.apk,PrebuiltGmsCorePano/PrebuiltGmsCorePano.apk,PrebuiltGmsCorePano/lib/arm/*.so,PrebuiltGmsCorePano/lib/arm64/*.so,SetupWraith/SetupWraith.apk,TV/TV.apk,TV/lib/arm/*.so,TvProvider/TvProvider.apk,TvSettings/TvSettings.apk}
echo "Google apps for /system/priv-app copied"

# Copying etc
if [[ ! -e /system/etc/sysconfig ]]; then
	mkdir /system/etc/sysconfig
fi
cp -r /$DIRsd/system/etc/sysconfig/* /system/etc/sysconfig
cp -r /$DIRsd/system/etc/permissions/* /system/etc/permissions
chmod 00644 /system/etc/sysconfig/*
chmod 00644 /system/etc/permissions/*
echo "/system/etc copied"

# Copying lib
# localized
cp -r /$DIRsd/systemloc/lib/*.so /system/lib
# gapps
cp -r /$DIRsd/system/lib/*.so /system/lib
chmod 00644 /system/lib/*.so
echo "Shared libraries copied to /system/lib"

# Copying media
cp -r /$DIRsd/system/media/bootanimation.zip /system/media
chmod 00644 /system/media/bootanimation.zip
echo "/system/media/bootanimation.zip copied"

cp -r /$DIRsd/system/media/audio/ui/*.ogg /system/media/audio/ui
chmod 00644 /system/media/audio/ui/*.ogg
echo "/system/media/audio/ui copied"

# Copying framework files
# localized
cp -r /$DIRsd/systemloc/framework/* /system/framework
# gapps
cp -r /$DIRsd/system/framework/* /system/framework
chmod 00644 /system/framework/*
echo "Framework localization and services copied to /system/framework"

# Copying localized vendor/framework
cp -r /$DIRsd/systemloc/vendor/framework/* /system/vendor/framework
chmod 00755 /system/vendor/framework/mitv-framework-res
chmod 00644 /system/vendor/framework/mitv-framework-res/mitv-framework-res.apk
echo "Localized vendor/framework/mitv-framework-res copied"

# Copying build.prop
cp -r /$DIRsd/system/build.prop /system
chmod 00644 /system/build.prop
echo "Modified /system/build.prop for GappsTV"

sync
echo "Google GappsTV successfully installed"
echo "Rebooting in 10 seconds"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!!!!!!!!!!!! Don't forget to go to Recovery !!!!!!!!!!!!"
echo "!!!!!!!!!!!!!! And do Wipe All Data there !!!!!!!!!!!!!!"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
sleep 10
reboot
