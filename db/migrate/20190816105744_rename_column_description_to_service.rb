class RenameColumnDescriptionToService < ActiveRecord::Migration[5.2]
  def change
    rename_column :services, :description,:service_name
  end
end
