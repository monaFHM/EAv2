class AddImgurlToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :img_url, :string
  end
end
