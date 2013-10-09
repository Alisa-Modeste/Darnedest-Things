# TODO: Validations: question title length mininum; Must pick at least one tag
# TODO: Add  SQL indexes to improve query speed. - see Evernote

class Question < ActiveRecord::Base
   attr_accessible :title, :body, :user_id

  include PgSearch
  pg_search_scope :search_question,
            against: [:title, :body],
            using: { :tsearch => {
              dictionary: "english",
              any_word: true, prefix: true} }

  has_many(
    :tag_rows,
    class_name: "Tagging",
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

  has_many(
    :answers,
    class_name: "Answer",
    foreign_key: :question_id,
    primary_key: :id
  )

  #tags is an array
  #query is a string of search terms
  def self.search_database(tags, query)
    Question.joins(:tags).where("tags.name"=> tags).search_question(query)
  end

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
