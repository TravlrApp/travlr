class CreateUserPrefs < ActiveRecord::Migration
  def change
    create_table :user_prefs do |t|
      t.integer :swimming
      t.integer :hiking
      t.integer :guided_tour
      t.integer :diving
      t.integer :climbing
      t.integer :skydiving
      t.integer :eating
      t.integer :clubbing
      t.integer :beach
      t.integer :skiing
      t.integer :snowboarding
      t.integer :ziplining

      t.timestamps
    end
  end
end
