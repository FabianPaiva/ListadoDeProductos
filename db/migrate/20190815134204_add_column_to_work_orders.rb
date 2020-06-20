class AddColumnToWorkOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :work_orders, :registration_date, :date
    add_column :work_orders, :registration_work, :date
  end
end
