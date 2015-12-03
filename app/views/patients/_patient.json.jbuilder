json.extract! patient, :id
json.url patient_url(patient, format: :json)
json.num_stays patient.stays.count
json.stay_ids patient.stay_ids
json.merge! patient.attributes
