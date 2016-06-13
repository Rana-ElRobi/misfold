json.array!(@disxrefs) do |disxref|
  json.extract! disxref, :id, :xref
  json.url disxref_url(disxref, format: :json)
end
