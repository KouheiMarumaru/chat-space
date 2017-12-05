json.messages @messages.each do |message|
  json.name     message.user.name
  json.date     message.message_format
  json.content     message.content
  json.img    message.img
  json.id       message.id
end
