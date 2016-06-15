json.array!(@is_aproteins) do |is_aprotein|
  json.extract! is_aprotein, :id, :id, :name, :neighbors
  json.url is_aprotein_url(is_aprotein, format: :json)
end
