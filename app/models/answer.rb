class Answer < ActiveRecord::Base
  attr_accessible :response, :question_id, :user_id
  after_create :add_notification

  validates :response, presence: true

  belongs_to(
    :question,
    class_name: "Question",
    foreign_key: :question_id,
    primary_key: :id
  )

  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )
  
  def add_notification
		users = FollowQuestion.select(:user_id).where(question_id: self.question_id)
		
		rows = users.map {|user| {follower_id: user.user_id, question_id: self.question_id, seen: false } }
		FollowQuestionNotification.create(rows)
	end
end
