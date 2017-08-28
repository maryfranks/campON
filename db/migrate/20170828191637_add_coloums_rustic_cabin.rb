class AddColoumsRusticCabin < ActiveRecord::Migration[5.1]
  def change
    add_column :parks, :rustic_cabin, :boolean,  default: false
  end
end
