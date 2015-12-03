json.extract! ward, :id
json.url owner_url(ward, format: :json)
json.merge! ward.attributes
