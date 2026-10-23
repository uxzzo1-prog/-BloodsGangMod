name: Build Bloods Gang Mod .so

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Source Code
        uses: actions/checkout@v3

      - name: Set up Android NDK
        uses: nttld/setup-ndk@v1
        with:
          ndk-version: r23b
          add-to-path: true

      - name: Create Application.mk Automatically
        run: |
          echo "APP_ABI := armeabi-v7a" > Application.mk
          echo "APP_PLATFORM := android-21" >> Application.mk

      - name: Build Shared Library (.so)
        run: |
          ndk-build

      - name: Upload Artifact
        uses: actions/upload-artifact@v3
        with:
          name: libBloodsGang.so
          path: libs/armeabi-v7a/libBloodsGang.so
