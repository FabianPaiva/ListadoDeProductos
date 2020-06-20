class CreateWorkOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :work_orders do |t|
      t.string :year, nullable: false
      t.string :enrollment, nullable: false
      t.timestamps
    end
  end
end
