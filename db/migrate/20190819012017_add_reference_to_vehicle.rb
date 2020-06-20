class AddReferenceToVehicle < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicles, :colors
    add_reference :vehicles, :clients
    add_reference :vehicles, :vehicle_models
  end
end
