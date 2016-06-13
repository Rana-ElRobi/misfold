json.array!(@diseasesubsets) do |diseasesubset|
  json.extract! diseasesubset, :id, :subset
  json.url diseasesubset_url(diseasesubset, format: :json)
end
