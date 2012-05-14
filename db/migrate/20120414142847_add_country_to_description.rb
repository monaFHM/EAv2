class AddCountryToDescription < ActiveRecord::Migration
  def change
    add_column :descriptions, :country, :string
  end
end
