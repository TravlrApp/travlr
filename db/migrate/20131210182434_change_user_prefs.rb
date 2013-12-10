class ChangeUserPrefs < ActiveRecord::Migration
  def change
  	change_table :user_prefs do |t|
  		t.integer :user_id
  	end
  end
end
