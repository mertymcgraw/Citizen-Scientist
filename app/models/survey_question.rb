class SurveyQuestion < ActiveRecord::Base
  validates :question, presence: true
  validates :environmental_studies_id, presence: true
end
