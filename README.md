# Movie Api

## Setup

```ruby
bundle install # Install dependency
bundle exec hanami db prepare # Prepare ( create and migrate ) DB for development environment
bundle exec rake db:seed # Seed predefined data
bundle exec hanami server # Run the server
```

Or using docker

```
docker compose up
```

The API will be available from localhost:2300.
You need to set the authorization header with `Bearer eyJhbGciOiJub25lIn0.eyJ1c2VyX2lkIjoxfQ.` (predefined user api key [JWT format]) to access the API.

Available APIs and example using [httpie](https://httpie.io) :

- Get the movies list: `/movies`
```bash
http http://127.0.0.1:2300/movies 'Authorization:Bearer eyJhbGciOiJub25lIn0.eyJ1c2VyX2lkIjoxfQ.'
```

- Search movies by title: `/movies?search={keyword}`
```bash
http http://127.0.0.1:2300/movies\?search\=black 'Authorization:Bearer eyJhbGciOiJub25lIn0.eyJ1c2VyX2lkIjoxfQ.'
```

- Add movie as favorite: `/favorites/:movie_id`
```bash
http POST http://localhost:2300/favorites/1 'Authorization:Bearer eyJhbGciOiJub25lIn0.eyJ1c2VyX2lkIjoxfQ.'
```
It returns 200 status when it successfully add the movies favorites.
It returns 400 status when movie already added to favorites.

- Get the favorited movies list: `/favorites`
```bash
http http://localhost:2300/favorites 'Authorization:Bearer eyJhbGciOiJub25lIn0.eyJ1c2VyX2lkIjoxfQ.'
```
