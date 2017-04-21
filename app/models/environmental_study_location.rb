class EnvironmentalStudyLocation < ActiveRecord::Base
   validates :location_id, presence: true
   validates :environmental_study_id, presence: true
end
