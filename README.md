# README
Era Vodoleya

## System dependencies
- Ruby 2.5.0
- Rails 5.2.1
- Node.js
- Yarn
- Postgres 10

### Installation:

```bash
git clone git@github.com:/DmitriyManaev/vodoley.git

cd vodoley

bundle install

cp config/secrets.yml.example config/secrets.yml
cp config/database.yml.example config/database.yml

rails db:create
rails db:migrate

yarn install
```

### Run server

UPDATES: do not need to run.

To run server:
```bash
rails s
```

To run webpacker server (not necessary):
```bash
./bin/webpack-dev-server
```

### Tests
```bash
bundle exec rails db:test:prepare
bundle exec rspec
```