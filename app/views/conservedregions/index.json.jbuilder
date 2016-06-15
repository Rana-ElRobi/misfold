json.array!(@conservedregions) do |conservedregion|
  json.extract! conservedregion, :id, :name, :score, :start, :end, :type
  json.url conservedregion_url(conservedregion, format: :json)
end
