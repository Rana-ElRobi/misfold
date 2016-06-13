json.array!(@disjointneighbors) do |disjointneighbor|
  json.extract! disjointneighbor, :id, :neighbor
  json.url disjointneighbor_url(disjointneighbor, format: :json)
end
