class AddColumnToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :patent_number, :string
    add_column :vehicles, :chassis_number, :string
  end
end
