class RenameColumnVehicleModels < ActiveRecord::Migration[5.2]
  def change
    rename_column :vehicle_models, :description, :model_name
  end
end
