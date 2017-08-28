class AddForeingKeys < ActiveRecord::Migration[5.1]
  def change

    add_foreign_key :activities, :park
    add_foreign_key :parks, :activities

    add_foreign_key :trips, :parks
    add_foreign_key :trips, :users

    add_foreign_key :messages, :users
    add_foreign_key :messages, :trips


    add_foreign_key :users, :trips
    add_foreign_key :users, :messages

  end
end
