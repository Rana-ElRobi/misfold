json.array!(@diseasefamilies) do |diseasefamily|
  json.extract! diseasefamily, :id, :familyid, :familyname
  json.url diseasefamily_url(diseasefamily, format: :json)
end
