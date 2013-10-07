class User < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many(
    :follower_rows,
    class_name: "FollowUser",
    foreign_key: :is_followed_id,
    primary_key: :id
  )

  has_many(
    :is_following_user_rows,
    class_name: "FollowUser",
    foreign_key: :follower_id,
    primary_key: :id
  )

  has_many(
    :is_following_question_rows,
    class_name: "FollowQuestion",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :followers,
    through: :follower_rows
  )

  has_many(
    :is_following_users,
    through: :is_following_user_rows
  )

  has_many(
    :is_following_questions,
    through: :is_following_question_rows
  )

  #the rest
  has_many(
    :questions,
    class_name: "Question",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :answers,
    class_name: "Answer",
    foreign_key: :user_id,
    primary_key: :id
  )

  # has_many(
  #   :comments,
  #   class_name: "Comment",
  #   foreign_key: :user_id,
  #   primary_key: :id
  # )
end
