class AddCountyToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :county, :string
  end
end
