class SurveyQuestion < ActiveRecord::Base
  belongs_to :environmental_study

  validates :question, presence: true
  validates :environmental_studies_id, presence: true
end
