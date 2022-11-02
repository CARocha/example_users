json.extract! announcement, :id, :content, :date, :account, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
