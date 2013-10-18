class Answer < ActiveRecord::Base
  attr_accessible :response, :question_id, :user_id

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

  def as_json(*args)
      hash = (super(*args)['answers'].nil?) ? super(*args) : super(*args)['answers']

      hash.merge!("user_id" => self.user_id)
      hash.merge!("question_id" => self.question_id)
  end
end
