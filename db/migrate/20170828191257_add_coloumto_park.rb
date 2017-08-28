class AddColoumtoPark < ActiveRecord::Migration[5.1]
  def change
      add_column :parks, :trailer_equipped_campsite, :boolean,  default: false
  end
end
