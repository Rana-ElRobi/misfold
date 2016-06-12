json.array!(@is_adiseases) do |is_adisease|
  json.extract! is_adisease, :id, :id, :name, :neighbors
  json.url is_adisease_url(is_adisease, format: :json)
end
