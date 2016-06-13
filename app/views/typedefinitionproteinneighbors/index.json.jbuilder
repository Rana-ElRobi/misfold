json.array!(@typedefinitionproteinneighbors) do |typedefinitionproteinneighbor|
  json.extract! typedefinitionproteinneighbor, :id, :neighbor
  json.url typedefinitionproteinneighbor_url(typedefinitionproteinneighbor, format: :json)
end
