json.extract! patient, :id
json.url patient_url(patient, format: :json)
json.merge! patient.attributes
json.owner patient.owner
