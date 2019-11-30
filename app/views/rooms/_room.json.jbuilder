json.extract! room, :id, :user_id, :title, :content, :category, :created_at, :updated_at
json.url room_url(room, format: :json)
