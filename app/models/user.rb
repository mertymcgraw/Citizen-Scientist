class User < ActiveRecord::Base
  has_many :dive_entries
  has_many :survey_responses


  validates :name, presence: true
  validates :email, uniqueness: true
  validates :hashed_password, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate?(plain_text_password)
    self.hashed_password == plain_text_password
  end

end
