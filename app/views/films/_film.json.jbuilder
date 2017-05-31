json.extract! film, :id, :name, :genre, :duration, :country, :cinemacompany, :minage, :actor, :rigger, :created_at, :updated_at
json.url film_url(film, format: :json)
