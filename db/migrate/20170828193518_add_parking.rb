class AddParking < ActiveRecord::Migration[5.1]
  def change

    add_column :parks, :parking, :boolean,  default: false
  end
end
