json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :id, :name, :neighbors, :type
  json.url relationship_url(relationship, format: :json)
end
