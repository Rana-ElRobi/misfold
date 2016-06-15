json.array!(@typedefinitionproteins) do |typedefinitionprotein|
  json.extract! typedefinitionprotein, :id, :id, :name, :neighbors, :synonym, :definition, :comment, :is_transitive, :is_obsolete
  json.url typedefinitionprotein_url(typedefinitionprotein, format: :json)
end
