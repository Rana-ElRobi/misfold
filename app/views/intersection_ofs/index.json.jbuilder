json.array!(@intersection_ofs) do |intersection_of|
  json.extract! intersection_of, :id, :id, :name, :neighbors
  json.url intersection_of_url(intersection_of, format: :json)
end
