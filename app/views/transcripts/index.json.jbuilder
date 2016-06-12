json.array!(@transcripts) do |transcript|
  json.extract! transcript, :id, :id, :name, :iscolonical, :sequence, :refrencesequence, :alternativename
  json.url transcript_url(transcript, format: :json)
end
