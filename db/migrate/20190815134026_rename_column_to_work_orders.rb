class RenameColumnToWorkOrders < ActiveRecord::Migration[5.2]
  def change
    rename_column :work_orders,:enrollment,:patent_number
  end
end
