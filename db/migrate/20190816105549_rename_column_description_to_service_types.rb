class RenameColumnDescriptionToServiceTypes < ActiveRecord::Migration[5.2]
  def change
    rename_column :service_types, :description,:service_type_name
  end
end
