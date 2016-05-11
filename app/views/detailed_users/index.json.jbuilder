json.array!(@detailed_users) do |detailed_user|
  json.extract! detailed_user, :id
  json.url detailed_user_url(detailed_user, format: :json)
end
