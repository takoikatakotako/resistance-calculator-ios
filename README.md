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
./Scripts/generate.sh   # Xcode プロジェクトを生成
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

### バージョン

`MARKETING_VERSION`（例: 4.0.0）は `ios/project.yml` で管理しています。

ビルド番号は `Scripts/generate.sh` が git のコミット数から自動採番するため、
手で更新する必要はありません。コミットのたびに増えるので、
App Store Connect が求める「同一バージョン内で単調増加」を満たします。

プロジェクトを生成せずに `mint run xcodegen generate` を直接実行すると
ビルド番号が展開されないため、必ず `Scripts/generate.sh` を使ってください。

### スキーム

| スキーム | Bundle ID | 用途 |
|---|---|---|
| `Local` | `com.swiswiswift.ResistanceCalculator` | 開発用（テスト実行対象） |
| `Production` | `resistanceCalc.biz.sciencetools` | App Store 配信用 |

### 対応 OS

iOS 17.0 以上 / iPhone

## リリース

1. `ios/project.yml` の `MARKETING_VERSION` を更新する
2. `CHANGELOG.md` に変更内容を追記する
3. `ios/ReleaseNotes/<バージョン>.txt` に App Store 用の文面を用意する
4. `cd ios && ./Scripts/generate.sh` でプロジェクトを生成する
5. Xcode で `Production` スキームを選び、Archive して App Store Connect へアップロードする

ビルド番号は生成スクリプトが git のコミット数から自動採番するため、手で更新する必要はありません。

## ランディングページ

<https://takoikatakotako.github.io/resistance-calculator/>

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
