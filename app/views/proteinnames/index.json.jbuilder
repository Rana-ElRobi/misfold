json.array!(@proteinnames) do |proteinname|
  json.extract! proteinname, :id, :name, :type, :isprimary
  json.url proteinname_url(proteinname, format: :json)
end
