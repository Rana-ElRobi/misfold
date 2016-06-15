json.array!(@diseaseontologies) do |diseaseontology|
  json.extract! diseaseontology, :id, :doid, :name, :alt_id, :definition, :subset, :synonym, :xref, :created_by, :creation_date, :url
  json.url diseaseontology_url(diseaseontology, format: :json)
end
