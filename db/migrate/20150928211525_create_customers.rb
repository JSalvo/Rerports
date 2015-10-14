class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :company_name
      t.string :address
      t.string :cap
      t.string :city
      t.string :email
      t.string :cf
      t.string :piva
      t.decimal :hour_price

      t.timestamps null: false
    end
  end
end
