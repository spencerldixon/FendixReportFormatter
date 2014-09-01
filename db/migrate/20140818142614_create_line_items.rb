class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :campaign
      t.string :site
      t.integer :impressions
      t.integer :clicks
      t.float :ctr
      t.date :date

      t.timestamps
    end
  end
end
