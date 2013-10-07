class Tag < ActiveRecord::Base
  attr_accessible :name

  has_many(
    :question_rows,
    class_name: "Tagging",
    foreign_key: :tag_id,
    primary_key: :id
  )

  has_many(
    :questions,
    through: :question_rows
  )
end
