# json.extract! @runn, :id, :amenities, :ident, :occupied, :size, :ward_id, :created_at, :updated_at
json.partial! "runn", runn: @runn
json.ward do
  json.partial! "wards/ward", ward: @runn.ward
end
