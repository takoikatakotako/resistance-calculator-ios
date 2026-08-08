# 抵抗計算機 (ResistanceCalculator)

抵抗のカラーコードから抵抗値を計算するアプリです。

[App Store でダウンロード](https://apps.apple.com/jp/app/id1034171119)

## ディレクトリ構成

```
.
├── ios/        iOS アプリ（Swift / SwiftUI）
├── lp/         ランディングページ・プライバシーポリシー・利用規約
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

ユニットテストに加えて UI テストも `Local` スキームに含まれています。

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

### 対応 OS

iOS 17.0 以上 / iPhone

## ランディングページ

<https://takoikatakotako.github.io/resistance-calculator-ios/>

`lp/` 配下の静的 HTML です。ビルド不要で、ブラウザで直接開けます。

```sh
open lp/index.html
```

| ファイル | 内容 |
|---|---|
| `index.html` | トップページ |
| `privacy.html` | プライバシーポリシー |
| `terms.html` | 利用規約 |

`main` の `lp/` に変更が入ると GitHub Actions が自動でデプロイします
（`.github/workflows/lp-deploy.yml`）。手動実行も可能です。
