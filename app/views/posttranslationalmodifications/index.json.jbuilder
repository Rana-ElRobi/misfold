json.array!(@posttranslationalmodifications) do |posttranslationalmodification|
  json.extract! posttranslationalmodification, :id, :keywords, :description, :position, :lenght, :featurekey
  json.url posttranslationalmodification_url(posttranslationalmodification, format: :json)
end
