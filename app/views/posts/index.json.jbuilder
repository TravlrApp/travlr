json.array!(@posts) do |post|
  json.extract! post, :start, :end, :start_loc, :end_loc, :description
  json.url post_url(post, format: :json)
end
