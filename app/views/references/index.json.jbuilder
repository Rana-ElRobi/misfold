json.array!(@references) do |reference|
  json.extract! reference, :id, :id, :title, :url, :retrievablereference, :clinicalreference, :otherresource
  json.url reference_url(reference, format: :json)
end
