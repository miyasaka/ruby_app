json.array!(@sample2s) do |sample2|
  json.extract! sample2, :id, :col1
  json.url sample2_url(sample2, format: :json)
end
