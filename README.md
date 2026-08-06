# 抵抗計算機 (ResistanceCalculator)

抵抗のカラーコードから抵抗値を計算する iOS アプリです。

## ディレクトリ構成

```
.
├── ios/        iOS アプリ（Swift / SwiftUI）
└── .github/    GitHub Actions
```

Android 版を追加する場合は `android/` を並べる想定です。

## iOS

### セットアップ

Xcode プロジェクトは XcodeGen で生成するため、リポジトリにはコミットされていません。
CLI ツールは Mint（`ios/Mintfile`）で管理しています。

```sh
brew install mint
cd ios
mint bootstrap          # 初回はソースビルドのため10分程度かかります
mint run xcodegen generate
open ResistanceCalculator.xcodeproj
```

以降のコマンドはすべて `ios/` で実行します。

### Lint

```sh
mint run swiftlint lint --strict
mint run swiftlint --fix     # 自動修正
```

### テスト

```sh
xcodebuild test \
  -project ResistanceCalculator.xcodeproj \
  -scheme Local \
  -destination 'platform=iOS Simulator,name=iPhone 17' \
  CODE_SIGNING_ALLOWED=NO
```

### ビルド

```sh
xcodebuild build \
  -project ResistanceCalculator.xcodeproj \
  -scheme Local \
  -sdk iphonesimulator \
  -configuration Debug \
  CODE_SIGNING_ALLOWED=NO
```

### スキーム

| スキーム | Bundle ID | 用途 |
|---|---|---|
| `Local` | `com.swiswiswift.ResistanceCalculator` | 開発用（テスト実行対象） |
| `Production` | `resistanceCalc.biz.sciencetools` | App Store 配信用 |
