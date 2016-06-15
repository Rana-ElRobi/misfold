json.array!(@xrefproteins) do |xrefprotein|
  json.extract! xrefprotein, :id, :xrefname
  json.url xrefprotein_url(xrefprotein, format: :json)
end
