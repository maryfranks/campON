class AddColumnPark < ActiveRecord::Migration[5.1]
  def change
    add_column :parks, :address, :string
    add_column :parks, :phone, :string
  end
end
