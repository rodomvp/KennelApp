json.array!(@runns) do |runn|
  json.extract! runn, :id, :amenities, :ident, :occupied, :size, :ward_id
  json.url runn_url(runn, format: :json)
end
