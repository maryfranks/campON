class AddColoumsShelter < ActiveRecord::Migration[5.1]
  def change

    add_column :parks, :soft_sided_shelter, :boolean,  default: false

  end
end
