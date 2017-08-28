class AddForeignKEys < ActiveRecord::Migration[5.1]
  def change

    add_column :messages, :user_id, :integer
    add_column :messages, :park_id, :integer

    add_column :parks, :activities_id, :integer

    add_column :trips, :user_id, :integer
    add_column :trips, :park_id, :integer

    add_column :users, :trip_id, :integer
    add_column :users, :message_id, :integer

  end
end
