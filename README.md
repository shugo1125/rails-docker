# 環境構築方法

以下の手順に従って、ローカル環境にこのプロジェクトをセットアップしてください。

## 1. リポジトリのクローン

まず、GitHub からリポジトリをクローンします。

```
git clone https://github.com/あなたのgithubアカウント名/rails-docker.git
cd rails-docker
```

## 2. Docker と Docker Compose をインストールされているか確認しましょう

以下のコマンドを入力し、バージョンを確認し、正しくインストールされてるか確認しましょう

```
docker --version
docker-compose --version
```

## 3. 必要なコンテナのビルドと起動

```
docker-compose up --build -d
```

## 4.データベースの作成

以下のコマンドを叩いてデータベースを作成します。

```
docker-compose exec web rails db:create
```

## 5. マイグレーションの実行

```
docker-compose exec web rails db:migrate
```

## 6.以上で環境構築は終了です
