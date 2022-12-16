# 概要

Golang アプリケーションのベースとなるもの。

ORMしか入れていません。

フレームワーク一つも入れていないので、使用したいフレームワークを`go get`して使用してください。

# 環境構築
## 1. ルートディレクトリに「.env」ファイルの用意
```
touch .env
```
下記環境変数をセット
|変数名|説明|
|----|----|
|GO_MODE|稼働環境|
|DB_USER|DBユーザー|
|DB_PASSWORD|DBユーザーパスワード|
|DB_HOST|DBホスト|
|DB_NAME|データベース名|

## 2. イメージビルドとDB作成・マイグレーション
```
make setup
```

## 3. APIスタート
```
make start
```


# Makefile
### setup
イメージビルドとDB作成・マイグレーション

### db.create
DB作成

### db.migrate
DBマイグレーション

### db.seed
シードデータ投入

### start
APIスタート（Dockerコンテナ起動）

### end
APIストップ（Dockerコンテナ停止）

### entry-server-container
Dockerサーバーコンテナに ash で入る

### entry-db-container
Docker DBコンテナに bash で入る