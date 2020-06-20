class RenameColumnMailToClients < ActiveRecord::Migration[5.2]
  def change
    rename_column :clients, :mail, :limite_credito
  end
end
