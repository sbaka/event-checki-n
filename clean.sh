# From the project root
flutter clean            # remove build artefacts
rm -rf ios/Pods
rm -f  ios/Podfile.lock

flutter pub get          # regenerate .symlinks for dart packages

cd ios
pod install              # fresh install of all CocoaPods
cd ..