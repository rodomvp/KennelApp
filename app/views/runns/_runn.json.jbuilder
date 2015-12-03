json.extract! runn, :id
json.url runn_url(runn, format: :json)
json.num_stays runn.stays.count
json.stay_ids runn.stay_ids
json.stays runn.stays.each do |stay|
  json.partial! "stays/stay", stay: stay
end
json.merge! runn.attributes
