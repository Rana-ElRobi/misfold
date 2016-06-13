json.array!(@relationshipneighbors) do |relationshipneighbor|
  json.extract! relationshipneighbor, :id, :neighbor
  json.url relationshipneighbor_url(relationshipneighbor, format: :json)
end
