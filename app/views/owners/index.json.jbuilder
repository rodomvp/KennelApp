json.array!(@owners) do |owner|
  json.partial! "owner", owner: owner
  json.patient_ids owner.patient_ids
end

# json.array!(owner.patients) do |patient|
#   json.extract! patient, :id
#   json.url patient_url(patient, format: :json)
# end

