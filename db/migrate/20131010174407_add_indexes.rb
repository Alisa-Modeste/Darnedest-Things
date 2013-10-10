class AddIndexes < ActiveRecord::Migration
  def change
    add_index :users, :email, unique: true
    add_index :tags, :name, unique: true
  end
end
