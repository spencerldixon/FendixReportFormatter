class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
