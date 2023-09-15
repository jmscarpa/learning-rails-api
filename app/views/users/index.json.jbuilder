json.array! @users do |user|
  json.id user.id
  json.username user.username
  json.rocket_chat_id user.rocket_chat_id
end