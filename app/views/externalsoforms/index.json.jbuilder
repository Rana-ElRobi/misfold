json.array!(@externalsoforms) do |externalsoform|
  json.extract! externalsoform, :id, :url
  json.url externalsoform_url(externalsoform, format: :json)
end
