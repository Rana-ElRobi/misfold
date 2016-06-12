json.array!(@genes) do |gene|
  json.extract! gene, :id, :name, :accesionno, :sequence, :chromosomelocation, :url
  json.url gene_url(gene, format: :json)
end
