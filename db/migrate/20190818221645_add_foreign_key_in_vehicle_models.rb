class AddForeignKeyInVehicleModels < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_models, :brand_id, :integer
    add_index :vehicle_models, :brand_id
  end
end
