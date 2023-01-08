# railsアプリ作成のためのbasicな雛形です。
DBにはpostgreSQLを使用しています。
---

## 設定する必要がある事項
- rubyのバージョン Dockerfile内のイメージ:tagで記述
- railsのバージョン Gemfileの中に記述
- appのディレクトリ名 Dockerfile内の`ARG APP_NAME`で編集可能
  - entrypoint.shとdocker-compose.ymlでもプロジェクトのディレクトリ名をパスとして使用するため、依存関係にある。修正を忘れないようにすること。

### docker-compose upするたびに、ローカルのサーバーは起動するようになっている。


# コマンドととして実行するもの
1. railsプロジェクトの雛形作成
(１個目のrailsはサービス名, 2個目はrailsコマンド)

```bash
$ docker-compose run  --rm rails sh -c "rails new . --force --database=postgresql && bundle install"
```

2. config/database.ymlをdb_config.mdの内容に書き換えて、コンテナの中に潜り
```bash
$ rails:db:create
```

