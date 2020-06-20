class AddColumnsToVehicleModels < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_models, :year_of_production, :string
  end
end
