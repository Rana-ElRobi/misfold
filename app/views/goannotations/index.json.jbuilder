json.array!(@goannotations) do |goannotation|
  json.extract! goannotation, :id, :annotate
  json.url goannotation_url(goannotation, format: :json)
end
