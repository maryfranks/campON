class AddLodge < ActiveRecord::Migration[5.1]
  def change

    add_column :parks, :lodge, :boolean,  default: false

  end
end
