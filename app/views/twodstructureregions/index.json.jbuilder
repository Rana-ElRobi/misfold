json.array!(@twodstructureregions) do |twodstructureregion|
  json.extract! twodstructureregion, :id, :start, :end, :regiontype
  json.url twodstructureregion_url(twodstructureregion, format: :json)
end
