class ChangeCtrOnLineItemsTableToDecimal < ActiveRecord::Migration
  def change
  	remove_column :line_items, :ctr
  	add_column :line_items, :ctr, :decimal
  end
end
