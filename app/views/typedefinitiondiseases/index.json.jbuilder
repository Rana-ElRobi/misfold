json.array!(@typedefinitiondiseases) do |typedefinitiondisease|
  json.extract! typedefinitiondisease, :id, :id, :name, :neighbors, :definition
  json.url typedefinitiondisease_url(typedefinitiondisease, format: :json)
end
