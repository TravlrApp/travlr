class ChangeStartInPosts < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
  		t.remove :start
  		t.remove :end
  		t.date :start_date
  		t.date :end_date
  		t.time :start_time
  		t.time :end_time
  	end
  end
end
