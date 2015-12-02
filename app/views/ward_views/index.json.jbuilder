json.array!(@ward_views) do |ward_view|
  json.extract! ward_view, :id
  json.url ward_view_url(ward_view, format: :json)
end
