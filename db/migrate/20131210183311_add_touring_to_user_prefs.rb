class AddTouringToUserPrefs < ActiveRecord::Migration
  def change
  	change_table :user_prefs do |t|
  		t.remove :guided_tour
  		t.integer :touring
  	end
  end
end
