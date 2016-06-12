json.array!(@pathologies) do |pathology|
  json.extract! pathology, :id, :grosspicture, :microscopicpicture
  json.url pathology_url(pathology, format: :json)
end
