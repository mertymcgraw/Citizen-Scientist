class SurveyQuestion < ActiveRecord::Base
  belongs_to :environmental_study

  validates :question, presence: true
  validates :environmental_study_id, presence: true
end
