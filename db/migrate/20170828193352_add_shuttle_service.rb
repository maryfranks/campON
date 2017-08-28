class AddShuttleService < ActiveRecord::Migration[5.1]
  def change

    add_column :parks, :shuttle_service, :boolean,  default: false

  end
end
