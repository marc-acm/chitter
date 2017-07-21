json.extract! chitter, :id, :user_id, :body, :created_at, :updated_at
json.url chitter_url(chitter, format: :json)
