class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.date :report_date
      t.time :hour
      t.time :hour_trip
      t.boolean :billed
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
