json.array!(@predictiontools) do |predictiontool|
  json.extract! predictiontool, :id, :name
  json.url predictiontool_url(predictiontool, format: :json)
end
