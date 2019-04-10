# ADB


Go to into folder `~/Library/Android/sdk/platform-tools`

```bash
./adb shell
./adb shell run-as __PKG__ chmod -R 777 /data/data/__PKG__/databases > /tmp/sqlite.db
./adb shell run-as __PKG__ cat /data/data/__PKG__/databases/ffvv.db > /tmp/sqlite.db
./adb shell setprop __KEY__ __VALUE__

```

In order to run as root in emulator

```bash
./emulator -avd Nexus_5X_API_28 -writable-system
```