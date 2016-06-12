json.array!(@transcriptmodificationregions) do |transcriptmodificationregion|
  json.extract! transcriptmodificationregion, :id, :start, :end, :modification
  json.url transcriptmodificationregion_url(transcriptmodificationregion, format: :json)
end
