class CreateFollowUsers < ActiveRecord::Migration
  def change
    create_table :follow_users do |t|
      t.integer  :is_followed_id,  :null => false
      t.integer  :follower_id,  :null => false

      t.timestamps
    end

    add_index :follow_users, :is_followed_id
    add_index :follow_users, :follower_id
    add_index :follow_users, [:is_followed_id, :follower_id]
  end
end
