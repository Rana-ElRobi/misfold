json.array!(@diseases) do |disease|
  json.extract! disease, :id, :diseaseid, :icd10id, :pathogenesis, :clinicalpicture, :diseasename
  json.url disease_url(disease, format: :json)
end
