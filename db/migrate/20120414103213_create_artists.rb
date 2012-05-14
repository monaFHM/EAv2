class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :founded_in
      t.string :country
      t.integer :genre_id

      t.timestamps
    end
  end
end
