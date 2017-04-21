class CreateEnvironmentalStudyLocations < ActiveRecord::Migration
  def change
      create_table :environmental_study_locations do |t|
      t.integer :location_id, null: false
      t.integer :environmental_study_id, null: false

      t.timestamps
    end
  end
end
