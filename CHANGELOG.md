# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [4.0.0] - 2026-08-08

対応 OS を iOS 17.0 以上に引き上げたためメジャーバージョンを更新しています。

### Fixed
- **ピッカーを操作しても表示が更新されない不具合を修正（#7）**
  - 抵抗イラストのカラーバンドが選んだ色に変わらない
  - 5本帯モードで抵抗値が変わらない
  - 原因は抵抗値を保持する型が参照型だったこと。SwiftUI の差分検出が働かず、子View の再描画がスキップされていた。値型に変更して解決した。2021年の実装当初から存在していた
- 「金」と「黄」が同じ色で表示され区別できなかった問題を修正（#7）。カラーコード表・ピッカー・抵抗イラストのすべてに影響していた

### Changed
- カラーコード表を画像からネイティブの View に置き換え（#7）
  - 色の定義から表を組み立てるようにしたため、計算ロジックと表がずれなくなった
  - 色名を日本語に統一し、乗数を `×10³` のように上付きで表示
  - 全画面の画像から、閉じるボタン付きのカードに変更
- 設定画面をカード型のデザインに刷新（#7）。アプリのバージョンを表示するようにした
- 対応 OS を iOS 14.0 以上から **17.0 以上**に変更（#7）

### Removed
- 未使用だったトラッキング許諾（ATT）の要求を削除（#4, #7）。広告 SDK は元から組み込まれておらず、取得した許諾を使う先が存在しなかった

### Added
- プライバシーマニフェスト `PrivacyInfo.xcprivacy` を追加（#3）
- ランディングページ・プライバシーポリシー・利用規約を追加し、GitHub Pages で公開（#7, #8）
  - <https://takoikatakotako.github.io/resistance-calculator/>

### 開発環境

- リポジトリを `ios/` と `lp/` に再編（#7）。将来 `android/` を並べられる構成にした
- リポジトリ名を `resistance-calculator-ios` から `resistance-calculator` に変更（#8）
- CI を刷新（#2, #5）。存在しない Xcode 12.4 を指しており動作しない状態だった。4年間コメントアウトされていたテスト実行を有効化し、UI テストも対象に追加（#7）
- SwiftLint を導入（#2）。Mintfile にはあったが一度も実行されていなかった
- R.swift を廃止し Xcode 標準のアセットシンボルへ移行（#7）
- Swift の画面を Screen / Component / Entity に再編し、`PreviewProvider` を `#Preview` へ移行（#7）
- ビルド番号を git のコミット数から自動採番するようにした（#11）
- ビルド警告 18 件を解消（#3）

## 3.1.0 以前

このファイルを追加する前のバージョンについては記録がありません。
変更内容は git の履歴を参照してください。
