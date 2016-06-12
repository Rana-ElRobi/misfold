json.array!(@gos) do |go|
  json.extract! go, :id, :id, :url, :description, :annotations
  json.url go_url(go, format: :json)
end
