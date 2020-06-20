class AddIndexOnServiceType < ActiveRecord::Migration[5.2]
  def change
    add_index :service_types, :service_id
    add_index :service_types, :service_type_name
  end
end
