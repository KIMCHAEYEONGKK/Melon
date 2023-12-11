json.extract! track, :id, :title, :recommend, :flac, :genre, :lyrics, :album_id, :created_at, :updated_at
json.url track_url(track, format: :json)
