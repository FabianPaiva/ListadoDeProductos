class DeleteComlunInServiceTypes < ActiveRecord::Migration[5.2]
  def change
    remove_column :service_types, :services_id
  end
end
