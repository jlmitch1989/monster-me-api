class CreateCreations < ActiveRecord::Migration
  def change
    create_table :creations do |t|
      t.text :title
      t.text :picture
      t.text :artist
      t.text :description

      t.timestamps null: false
    end
  end
end
