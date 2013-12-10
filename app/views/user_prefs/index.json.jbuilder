json.array!(@prefs) do |pref|
  json.extract! pref, :user_id, :swimming, :hiking, :touring, :diving, :climbing, :skydiving, :eating, :clubbing, :beach, :skiing, :snowboarding, :ziplining
end