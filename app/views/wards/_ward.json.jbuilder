json.extract! ward, :id
json.url ward_url(ward, format: :json)
json.merge! ward.attributes
