json.array!(@organs) do |organ|
  json.extract! organ, :id, :name
  json.url organ_url(organ, format: :json)
end
