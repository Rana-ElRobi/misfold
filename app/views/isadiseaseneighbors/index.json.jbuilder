json.array!(@isadiseaseneighbors) do |isadiseaseneighbor|
  json.extract! isadiseaseneighbor, :id, :neighbor
  json.url isadiseaseneighbor_url(isadiseaseneighbor, format: :json)
end
