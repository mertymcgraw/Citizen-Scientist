class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :hashed_password, null: false
      t.string :dive_certification
      #THIS IS THE PAPERCLIP STUFF
      t.string :cover_photo_file_name
      t.string :cover_photo_content_type
      t.integer :cover_photo_file_size
      t.datetime :cover_photo_updated_at

      t.timestamps
    end
  end
end
