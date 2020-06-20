class RenameColumnSurnameToClients < ActiveRecord::Migration[5.2]
  def change
    rename_column :clients, :surname,:last_name
  end
end
