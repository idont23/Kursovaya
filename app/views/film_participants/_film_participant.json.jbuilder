json.extract! film_participant, :id, :role, :task, :film_id, :participant_id, :created_at, :updated_at
json.url film_participant_url(film_participant, format: :json)
