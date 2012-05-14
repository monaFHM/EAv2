class RemoveCountryFromArtist < ActiveRecord::Migration
  def up
    remove_column :artists, :country
  end

  def down
    add_column :artists, :country, :string
  end
end
