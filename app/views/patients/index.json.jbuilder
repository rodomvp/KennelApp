json.array!(@patients) do |patient|
  json.partial! "patient", patient: patient
end
