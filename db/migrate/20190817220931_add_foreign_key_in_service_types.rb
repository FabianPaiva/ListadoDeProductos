class AddForeignKeyInServiceTypes < ActiveRecord::Migration[5.2]
  def change
   add_column :service_types, :service_id, :integer
  end
end
