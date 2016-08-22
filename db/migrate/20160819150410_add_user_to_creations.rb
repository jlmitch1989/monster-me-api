class AddUserToCreations < ActiveRecord::Migration
  def change
    add_reference :creations, :user, index: true, foreign_key: true
  end
end
