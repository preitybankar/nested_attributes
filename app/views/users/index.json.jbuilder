json.array!(@users) do |user|
  json.extract! user, :id, :client_id, :username, :email, :password
  json.url user_url(user, format: :json)
end
