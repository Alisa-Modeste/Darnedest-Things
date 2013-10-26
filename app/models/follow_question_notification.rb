class FollowQuestionNotification < ActiveRecord::Base
  attr_accessible :follower_id, :question_id, :seen
end
