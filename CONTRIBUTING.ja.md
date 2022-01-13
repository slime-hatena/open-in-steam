[English version.](./CONTRIBUTING.md)

# Contribution Guide

プロジェクトに興味を持っていただきありがとうございます。  
これはコントリビュートするためのガイドです。ガイドラインであり、絶対的なルールではありません。より良い改善がある場合は、Pull requestsやIssuesからお知らせください。

## Issues

問題、機能リクエスト、または質問がある際は、Issues経由で送信してください。  
Issuesは日本語で記載いただいて大丈夫です。

- [不具合報告](./../../issues/new?template=bug-report.md)
- [機能リクエスト](./../../issues/new?template=feature_request.md)
- [質問](./../../issues/new?template=question.md)
- [その他](./../../issues/new)

## Pull requests

Pull requestsはいつでも大歓迎です。  
コードが取り込まれると、[このリポジトリに適用されているライセンス](./LICENSE)の対象になります。  
また[コードオーナー](./CODEOWNERS)はこのライセンスを自由に変更する権利を有します。ただし、大きな問題が発生しない限りは変更されません。

リリースノートはPull requestsのタイトルを元に生成されます。以下の点を意識してください。

- 1つのリクエストには1つだけ変更を行ってください。たとえば「新機能の追加とバグの修正」は認められません。
- リクエストには、できるだけシンプルでわかりやすいタイトルを付けてください。

## 環境構築

...

### Build

...

## Styleguides

### Code

...

### コミットメッセージ

コミットメッセージは "[Conventional Commits](https://www.conventionalcommits.org)" に基づいて設定します。日本語または英語で記載してください。

```txt
<型>[任意 スコープ]: <タイトル>

[任意 本文]

[任意 フッター]
```

```txt
<型>[任意 スコープ]: <タイトル>
  │          │           │
  │          │           └─⫸ 現在形で記述してください。日本語か英語で記述してください。
  │          │
  │          └─⫸ yarn|ci|git|...
  │
  └─⫸ 型の候補: build|ci|chore|docs|feat|fix|perf|refactor|test
```

#### 型

以下から選択してください。

- **build**: ビルドシステムや外部依存関係に影響する変更。(スコープの例: yarn)
- **ci**: CIの設定ファイルやスクリプトの変更。 (スコープの例: action)
- **chore**: buildやci、その他の型に含まれない変更。(スコープの例: git)
- **docs**: ドキュメントのみの変更
- **feat**: 新規機能の追加。
- **fix**: 不具合の修正。
- **perf**: パフォーマンス向上のみを目的とした変更。
- **refactor**: 不具合の修正や機能の追加を含まないコードの変更。
- **test**: 不足しているテストの追加や、既存のテストの修正。
