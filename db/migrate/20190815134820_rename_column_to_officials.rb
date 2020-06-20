class RenameColumnToOfficials < ActiveRecord::Migration[5.2]
  def change
    rename_column :officials, :phone_number ,:telephone
  end
end
