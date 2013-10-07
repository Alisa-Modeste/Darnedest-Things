class Question < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many(
    :tag_rows,
    class_name: "Taggings",
    foreign_key: :question_id,
    primary_key: :id
  )

  has_many(
    :tags,
    through: :tag_rows
  )

  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :follower_rows,
    class_name: "FollowQuestion",
    foreign_key: :question_id,
    primary_key: :id
  )

  has_many(
    :followers,
    through: :follower_rows
  )

#maybe
  # has_many(
  #   :recommendation_rows,
  #   class_name: "Recommendation",
  #   foreign_key: :is_recommended_for_id,
  #   primary_key: :id
  # )
  #
  # has_many(
  #   :is_recommended_for_rows,
  #   class_name: "Recommendation",
  #   foreign_key: :recommendation_id,
  #   primary_key: :id
  # )
  #
  # has_many(
  #   :recommendations,
  #   through: :recommendation_rows
  # )
  #
  # has_many(
  #   :is_recommended_fors,
  #   through: :is_recommended_for_rows
  # )
end
