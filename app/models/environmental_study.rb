class EnvironmentalStudy < ActiveRecord::Base
  has_many :environmental_study_locations
  has_many :locations, :through => :environmental_study_locations
  has_many :survey_questions
  has_many :survey_respones, :through =>  :survey_questions

  validates :study_name, presence: true
end
