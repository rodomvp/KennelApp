json.extract! owner, :id
json.url owner_url(owner, format: :json)
json.merge! owner.attributes

