class AddLocationsToPosts < ActiveRecord::Migration
  def change
  	change_table :posts do | t |
  		t.remove :location
  		t.string :start_loc
  		t.string :end_loc
  	end
  end
end
