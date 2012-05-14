class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.string :name
      t.integer :artist_id

      t.timestamps
    end
  end
end
