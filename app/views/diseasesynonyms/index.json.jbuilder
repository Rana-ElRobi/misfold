json.array!(@diseasesynonyms) do |diseasesynonym|
  json.extract! diseasesynonym, :id, :synonym
  json.url diseasesynonym_url(diseasesynonym, format: :json)
end
