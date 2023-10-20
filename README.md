# Hi! Recipes
## サイト概要
### サイトテーマ
レシピを考えるのを手伝ってくれるサイト
​
### テーマを選んだ理由
料理を作ることが好きなのでレシピサイトを作りたいと思いました。
ですが、毎日料理を作る人にとってその日のレシピを考えることが負担になっているということに気づき、それを手助けできるサイトを作りたいと考えました。
通常のレシピサイトとしての機能に加え、ランダムにレシピを表示する機能があるので、その日の献立の参考にすることができます。

### ターゲットユーザー
- 毎日、料理のレシピを考えるのが億劫になっている人
- 料理したいけど何を作るか思い浮かばない人
- 料理のレシピを見て参考にしたい人

### 主な利用シーン
- なんの料理を作ろうか考えるとき
- 買い物で買うものを考えるとき
- 自分のレシピを記録しておきたいとき

## 設計書
- [テーブル定義書](https://docs.google.com/spreadsheets/d/1XEzuFYDNyRjhDYlss77wYImhL30wf2JDhgxISuxAygA/edit#gid=1575826260)
- [アプリケーション詳細設計書](https://docs.google.com/spreadsheets/d/1ky30CmTZyk1V2wyETU-rsm9PrZeedAGXhrV5JqxBjFc/edit#gid=1847888043)

## 実装機能
### 管理者側（Admin）
- 管理者ログイン
- 会員登録されているユーザ情報の閲覧、編集、退会処理
- レシピコメント削除
- ユーザー検索

### 会員側（Public）
- ゲストログイン
- 会員登録、ログイン・ログアウト
- 会員情報編集
- レシピ検索（キーワード検索）
- いいね(お気に入り)
- コメント投稿
- レシピランダム表示

## 管理者ログイン情報
- /admin_signed_in
- メールアドレス：admin@example.com
- パスワード    ：password

## 開発環境
- OS：Amazon Linux 2
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
- [写真AC](https://www.photo-ac.com/)
- [Canva](https://www.canva.com/)