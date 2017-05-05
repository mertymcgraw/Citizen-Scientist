class EnvironmentalStudyLocation < ActiveRecord::Base
  validates :location_id, presence: true
  validates :environmental_study_id, presence: true

  belongs_to :location
  belongs_to :environmental_study
end
