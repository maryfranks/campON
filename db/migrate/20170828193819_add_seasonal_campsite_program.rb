class AddSeasonalCampsiteProgram < ActiveRecord::Migration[5.1]
  def change

    add_column :parks, :seasonal_campsite_program, :boolean,  default: false

  end
end
