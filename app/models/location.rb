class Location < ActiveRecord::Base
   validates :location_name, presence: true
end
