class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :postcode
      t.float :longitude
      t.float :latitude
      t.references :line_item, index: true

      t.timestamps
    end
  end
end
