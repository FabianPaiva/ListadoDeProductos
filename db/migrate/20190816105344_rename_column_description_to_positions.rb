class RenameColumnDescriptionToPositions < ActiveRecord::Migration[5.2]
  def change
    rename_column :positions, :description, :position_name
  end
end
