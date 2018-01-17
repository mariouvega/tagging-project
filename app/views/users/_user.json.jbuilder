json.extract! user, :id, :name, :email, :password, :provider, :uid, :created_at, :updated_at
json.url user_url(user, format: :json)
