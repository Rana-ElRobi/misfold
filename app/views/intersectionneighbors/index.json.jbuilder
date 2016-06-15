json.array!(@intersectionneighbors) do |intersectionneighbor|
  json.extract! intersectionneighbor, :id, :neighbor
  json.url intersectionneighbor_url(intersectionneighbor, format: :json)
end
