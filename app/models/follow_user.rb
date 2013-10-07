class FollowUser < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to(
    :is_followed,
    class_name: "User",
    foreign_key: :is_followed_id,
    primary_key: :id
  )

  belongs_to(
    :follower,
    class_name: "User",
    foreign_key: :follower_id,
    primary_key: :id
  )
end
