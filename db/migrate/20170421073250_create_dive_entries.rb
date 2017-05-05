class CreateDiveEntries < ActiveRecord::Migration
  def change
    create_table :dive_entries do |t|
      t.integer :diver_id, null: false
      t.integer :location_id, null: false
      t.string :dive_site, null: false
      t.string :date, null: false
      t.integer :dive_time, null: false
      t.integer :depth, null: false
      t.integer :temperature
      t.integer :visibility
      t.string :notes
      t.string :photo

      t.timestamps
    end
  end
end
