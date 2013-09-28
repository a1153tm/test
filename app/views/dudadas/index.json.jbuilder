json.array!(@dudadas) do |dudada|
  json.extract! dudada, :aaa
  json.url dudada_url(dudada, format: :json)
end
