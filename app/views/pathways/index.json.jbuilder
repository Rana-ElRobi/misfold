json.array!(@pathways) do |pathway|
  json.extract! pathway, :id, :id, :url
  json.url pathway_url(pathway, format: :json)
end
