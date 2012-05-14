class AddHomeCountryToDescription < ActiveRecord::Migration
  def change
    add_column :descriptions, :home_country, :string
  end
end
