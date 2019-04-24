# ADB

Go to into folder `~/Library/Android/sdk/platform-tools`

```bash
./adb shell
./adb shell run-as __PKG__ chmod -R 777 /data/data/__PKG__/databases/__DB__.db
./adb shell run-as __PKG__ cat /data/data/__PKG__/databases/__DB__.db > /tmp/sqlite.db
./adb shell setprop __KEY__ __VALUE__
./adb shell setprop debug.firebase.analytics.app __PKG__
```

In order to run as root in emulator

```bash
./emulator -avd Nexus_5X_API_28 -writable-system
```

adb devices
adb push "C:\tmp\img.jpg" /sdcard/Music
adb push "C:\tmp\img.jpg" /sdcard/Music
adb reboot
adb reboot-bootloader
adb install -r C:\tmp\app.apk