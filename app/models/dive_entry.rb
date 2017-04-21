class DiveEntry < ActiveRecord::Base
 validates :diver_id, presence: true
 validates :location_id, presence: true
 validates :dive_site, presence: true
 validates :dive_time, presence: true
 validates :depth, presence: true
end
