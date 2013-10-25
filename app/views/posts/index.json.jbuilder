json.array!(@posts) do |post|
  json.extract! post, :start, :end, :location, :description
  json.url post_url(post, format: :json)
end
