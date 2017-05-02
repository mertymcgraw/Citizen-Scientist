require 'bcrypt'

class User < ActiveRecord::Base
include Paperclip::Glue
  has_many :dive_entries, :foreign_key => "diver_id"
  has_many :survey_responses

  has_attached_file :cover_photo, styles: { medium: "300x300>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover_photo, content_type: /\Aimage\/.*\z/

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
    self.password == plain_text_password
  end

  def total_time_underwater
    total_time = self.dive_entries.map do |entry|
      entry.dive_time
    end
      total_time.reduce(:+)
  end

  def max_depth
    max_depth = 0
    self.dive_entries.each do |entry|
      if entry.depth > max_depth
        max_depth = entry.depth
      end
    end
    max_depth
  end


end
