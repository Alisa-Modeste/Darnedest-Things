class CreateFollowQuestionNotifications < ActiveRecord::Migration
  def change
    create_table :follow_question_notifications do |t|
		t.integer :question_id, null: false
		t.integer :follower_id, null: false
		t.boolean :seen, null: false

      t.timestamps
    end
  end
end
