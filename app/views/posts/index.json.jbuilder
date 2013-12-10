json.array!(@posts) do |post|
  json.extract! post, :start_date, :end_date, :location, :description, :user_id, :activity1, :activity2
end
