class DiveEntry < ActiveRecord::Base
  belongs_to :diver, :class_name => "User"
  belongs_to :location


 validates :diver_id, presence: true
 validates :location_id, presence: true
 validates :dive_site, presence: true
 validates :dive_time, presence: true
 validates :depth, presence: true
end
