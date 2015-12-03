json.array!(@wards) do |ward|
  json.extract! ward, :id
  json.url ward_url(ward, format: :json)
end
