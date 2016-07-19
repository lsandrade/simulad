json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :birthday, :sex, :obs
  json.url user_url(user, format: :json)
end
