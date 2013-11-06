# TODO: Change name to username or nickname or something and make it not null
# TODO: Use bcrypt
# TODO: Pretty much validations everywhere

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  attr_reader :password

  validates :name, :presence => { :message => "'Name to Display' can't be blank" }
  validates :email, presence: true
  validates :password, presence: true, on: :create

  before_validation :ensure_session_token

  has_many(
    :follower_rows,
    class_name: "FollowUser",
    foreign_key: :is_followed_id,
    primary_key: :id
  )

  has_many(
    :followed_user_rows,
    class_name: "FollowUser",
    foreign_key: :follower_id,
    primary_key: :id
  )

  has_many(
    :followed_question_rows,
    class_name: "FollowQuestion",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :followers,
    through: :follower_rows
  )

  has_many(
    :followed_users,
    through: :followed_user_rows,
    source: :followed
  )

  has_many(
    :followed_questions,
    through: :followed_question_rows,
    source: :user
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

  def self.generate_session_token
    SecureRandom.base64(16)
  end

  def self.find_by_credentials(email, password)
    user = User.find_by_email(email)

    if user && user.is_password?(password)
      user
    end

  end

  def ensure_session_token
    self.session_token || (self.session_token = self.class.generate_session_token)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
  end

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
    p "In pass"
    @password = password
  end


  # def self.get_follows(user)
  #   user_ids = user.followed_user_ids
  #   question_ids = user.followed_question_ids
  #
  #   questions = Question.where{(user_id.eq_any user_ids) | (id.eq_any question_ids)}
  #   answers = Answer.where(user_id: user_ids)
  #
  #   [questions, answers]
  #
  # end

  def is_password?(password)
      BCrypt::Password.new(self.password_digest).is_password?(password)
    end

  # has_many(
  #   :comments,
  #   class_name: "Comment",
  #   foreign_key: :user_id,
  #   primary_key: :id
  # )
end
