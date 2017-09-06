class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.integer :trip_id
      t.integer :user_id
      t.string :text
      t.string :label, default: "do"

      t.timestamps
    end
  end
end
