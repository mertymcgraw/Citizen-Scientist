class SurveyResponse < ActiveRecord::Base
  belongs_to :survey_question
  belongs_to :diver, :class_name => "User"

  validates :survey_question_id, presence: true
end
