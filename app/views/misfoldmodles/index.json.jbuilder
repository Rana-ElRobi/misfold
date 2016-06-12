json.array!(@misfoldmodles) do |misfoldmodle|
  json.extract! misfoldmodle, :id, :id, :type, :refseqm, :refseqp, :nuclutidechange, :molecularconsequence, :aminoacidechange
  json.url misfoldmodle_url(misfoldmodle, format: :json)
end
