class RenameColumnInVehicleModel < ActiveRecord::Migration[5.2]
  def change
    rename_column :vehicle_models, :model_name, :vehicle_model_name
  end
end
