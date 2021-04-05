brew install mint

mint bootstrap

mint run xcodegen xcodegen generate


  -project MyAwesomeApp.xcodeproj \


 xcodebuild -project ResistanceCalculator.xcodeproj -scheme "Local" -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 12,OS=14.4' test



xcodebuild -sdk iphonesimulator -configuration Debug build 