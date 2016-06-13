json.array!(@synonymproteins) do |synonymprotein|
  json.extract! synonymprotein, :id, :synonymname
  json.url synonymprotein_url(synonymprotein, format: :json)
end
