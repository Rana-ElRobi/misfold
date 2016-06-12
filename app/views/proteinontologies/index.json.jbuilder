json.array!(@proteinontologies) do |proteinontology|
  json.extract! proteinontology, :id, :prid, :name, :definition, :comment, :synonym, :namespace, :xref, :is_obsolete
  json.url proteinontology_url(proteinontology, format: :json)
end
