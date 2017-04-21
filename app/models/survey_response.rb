class SurveyResponse < ActiveRecord::Base
  validates :survey_question_id, presence: true
end
