json.array!(@feed_lists) do |feed_list|
  json.extract! feed_list, :id
  json.url feed_list_url(feed_list, format: :json)
end
