class CreateActivitiesForPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
    	t.string :activity1
    	t.string :activity2
    end
  end
end
