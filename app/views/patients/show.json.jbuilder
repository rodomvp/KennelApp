json.partial! "patient", patient: @patient
json.owner do
  json.partial! "owners/owner", owner: @patient.owner
end
