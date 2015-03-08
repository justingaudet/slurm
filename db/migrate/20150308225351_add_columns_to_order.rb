class AddColumnsToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :city, :string
    add_column :orders, :country, :string
    add_column :orders, :will_ship_by, :date
  end
end
