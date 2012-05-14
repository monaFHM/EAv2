class RemoveCountryFromDescription < ActiveRecord::Migration
  def up
    remove_column :descriptions, :country
  end

  def down
    add_column :descriptions, :country, :string
  end
end
