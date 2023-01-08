# config/database.ymlを以下のように編集して
```yaml
default: &default
  adapter: postgresql
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000
  encoding: unicode
  username: postgres
  password: postgres
  host: postgres_db

development:
  <<: *default
  database: app_development

test:
  <<: *default
  database: app_test
```

## コンテナの中でdb:createする
```bash
$ rails db:create
```