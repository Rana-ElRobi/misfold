json.array!(@disjoint_froms) do |disjoint_from|
  json.extract! disjoint_from, :id, :id, :name, :neighbors
  json.url disjoint_from_url(disjoint_from, format: :json)
end
