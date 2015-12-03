json.partial! "owner", owner: @owner
json.patients @owner.patients.each do |patient|
  json.partial! "patients/patient", patient: patient
end
