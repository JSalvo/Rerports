class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :description
      t.time :hour
      t.references :report, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
