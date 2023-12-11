json.extract! play_list, :id, :user_id, :track_id, :created_at, :updated_at
json.url play_list_url(play_list, format: :json)
