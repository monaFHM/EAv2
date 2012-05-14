class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.integer :country_id
      t.string :text

      t.timestamps
    end
  end
end
