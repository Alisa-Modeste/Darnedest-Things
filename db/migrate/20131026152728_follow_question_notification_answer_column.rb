class FollowQuestionNotificationAnswerColumn < ActiveRecord::Migration
  def change
	add_column :follow_question_notifications, :answer_id, null: false
	add_index: :follow_question_notifications, :answer_id
	add_index: :follow_question_notifications, :question_id
	add_index: :follow_question_notifications, :follower_id
  end
end
