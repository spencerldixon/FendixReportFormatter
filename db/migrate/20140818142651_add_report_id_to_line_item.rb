class AddReportIdToLineItem < ActiveRecord::Migration
  def change
  	add_column :line_items, :report_id, :integer, index: true
  end
end
