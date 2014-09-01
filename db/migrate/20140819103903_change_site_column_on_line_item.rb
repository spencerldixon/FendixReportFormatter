class ChangeSiteColumnOnLineItem < ActiveRecord::Migration
  def change
  	remove_column :line_items, :site
  	add_column :line_items, :site_id, :integer
  	add_index :line_items, :site_id
  end
end
