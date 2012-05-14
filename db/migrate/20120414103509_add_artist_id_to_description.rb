class AddArtistIdToDescription < ActiveRecord::Migration
  def change
    add_column :descriptions, :artist_id, :integer
  end
end
