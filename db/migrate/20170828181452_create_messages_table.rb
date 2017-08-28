class CreateMessagesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :trip_id
      t.integer :user_id
      t.text    :message
      t.timestamp
    end
  end
end
