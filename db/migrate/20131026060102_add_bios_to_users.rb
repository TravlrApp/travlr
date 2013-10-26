class AddBiosToUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.remove :name
  		t.string :first_name
  		t.string :last_name
  		t.string :user_name
  		t.integer :age
  	end
  end
end
