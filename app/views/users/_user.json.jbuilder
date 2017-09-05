json.extract! user, :id, :full_name, :mobile, :created_at, :updated_at
json.url user_url(user, format: :json)
