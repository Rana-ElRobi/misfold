json.array!(@keywords) do |keyword|
  json.extract! keyword, :id, :keyname
  json.url keyword_url(keyword, format: :json)
end
