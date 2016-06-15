json.array!(@pdbs) do |pdb|
  json.extract! pdb, :id, :id, :name, :identificationmethod, :url
  json.url pdb_url(pdb, format: :json)
end
