class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :hashed_password, null: false
      t.string :dive_certification
      t.string :cover_photo

      t.timestamps
    end
  end
end
