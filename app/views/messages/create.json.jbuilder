json.(@message, :id, :content, :img)
json.name @message.user.name
json.created_at  @message.created_at.strftime("%Y/%m/%d %H:%M:%S")
