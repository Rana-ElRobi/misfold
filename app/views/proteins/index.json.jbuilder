json.array!(@proteins) do |protein|
  json.extract! protein, :id, :uniprot_id, :name, :length, :sequence
  json.url protein_url(protein, format: :json)
end
