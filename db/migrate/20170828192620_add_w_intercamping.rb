class AddWIntercamping < ActiveRecord::Migration[5.1]
  def change

    add_column :parks, :winter_camping, :boolean,  default: false

  end
end
