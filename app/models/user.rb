# TODO: Change name to username or nickname or something and make it not null
# TODO: Use bcrypt

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  attr_reader :password

  before_validation :ensure_session_token

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
    through: :is_following_user_rows,
    source: :is_followed
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

  def self.generate_session_token
    SecureRandom.base64(16)
  end

  def self.find_by_credentials(email, password)
    p "email, password", email, password
    user = User.find_by_email(email)

    if user && user.password_digest == password
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
    #self.password_digest = salt_password
    p "There's a problem defining the password(digest)"
    #self.password = password
    self.password_digest = password
  end

  def get_follows
    user = self.current_user
    user_ids = user.is_following_user_ids
    question_ids = user.is_following_question_ids

    Question.where("user_id = ? OR id = ?", user_ids, question_ids)
    Answer.where(user_id: user_ids)

  end

  # has_many(
  #   :comments,
  #   class_name: "Comment",
  #   foreign_key: :user_id,
  #   primary_key: :id
  # )
end
