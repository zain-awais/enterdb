# README

# Movie Data Fetching

This repository contains code for fetching data from the Movies API and storing it in the Rails application's database. The following rake tasks are available for this purpose:

## Rails Command

```
rails db:create
```
```
rails db:migrate
```
```
bundle install
```

## Rake Tasks

```
rails store_movie_genre:fetch_data
```

This rake task fetches movie genres from the Movies API and stores them in the database. It ensures that the genres are up-to-date and can be used for categorizing movies.

To run this task, use the following command:

```
rails store_api_response_in_movies:fetch_data
```

## Start Server

```
rails s
```

## Start Up with Docker

```
docker compose build
```
After finish Build for initialize Postgres Container
```
docker compose up
```
for starting postgres container replace host: name from `localhost` to `db`
like this
```
default: &default
  adapter: postgresql
  encoding: unicode
  username: newuser
  password: password
  host: db
  port: 5432
  # For details on connection pooling, see Rails configuration guide
  # https://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
```