json.array!(@functions) do |function|
  json.extract! function, :id, :description
  json.url function_url(function, format: :json)
end
