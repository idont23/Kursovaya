json.extract! film_genre, :id, :film_id, :genre_id, :created_at, :updated_at
json.url film_genre_url(film_genre, format: :json)
