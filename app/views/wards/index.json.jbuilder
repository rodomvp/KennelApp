json.array!(@wards) do |ward|
  # json.extract! ward, :id, :ident
  # json.url ward_url(ward, format: :json)
  json.partial! "ward", ward: ward
  json.runns_count ward.runns.count
  json.runn_ids ward.runn_ids
end

