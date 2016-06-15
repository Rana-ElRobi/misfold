json.array!(@typedefinitiondiseaseneighbors) do |typedefinitiondiseaseneighbor|
  json.extract! typedefinitiondiseaseneighbor, :id, :neighbor
  json.url typedefinitiondiseaseneighbor_url(typedefinitiondiseaseneighbor, format: :json)
end
