class Location < ActiveRecord::Base
  has_many :dive_entries
  has_many :environmental_study_locations
  has_many :environmental_studies, :through => :environmental_study_locations
   validates :location_name, presence: true
end
