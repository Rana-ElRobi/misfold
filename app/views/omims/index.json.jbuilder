json.array!(@omims) do |omim|
  json.extract! omim, :id, :omimid, :omimurl, :moodofinheritnce
  json.url omim_url(omim, format: :json)
end
