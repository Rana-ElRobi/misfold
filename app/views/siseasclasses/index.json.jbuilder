json.array!(@siseasclasses) do |siseasclass|
  json.extract! siseasclass, :id, :diseasclass
  json.url siseasclass_url(siseasclass, format: :json)
end
