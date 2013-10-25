class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.datetime :start
      t.datetime :end
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
