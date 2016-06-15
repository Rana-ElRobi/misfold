json.array!(@isaproneighbors) do |isaproneighbor|
  json.extract! isaproneighbor, :id, :neighbor
  json.url isaproneighbor_url(isaproneighbor, format: :json)
end
