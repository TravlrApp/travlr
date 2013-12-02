class ChangePostInfo < ActiveRecord::Migration
  def change
  	  change_table :posts do |t|
  		t.remove :start_time
  		t.remove :end_time
  		t.remove :start_loc
  		t.remove :end_loc
  		t.string :location
  	end
  end
end
