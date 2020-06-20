class AddColumnToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :document_number,:integer
    add_column :clients,:telephone, :integer
    add_column :clients, :mail,:string
    add_column  :clients, :address,:string
    add_column :clients,:gender, :string
    add_column :clients, :ruc, :integer
    add_column :clients, :customer_type, :string
    add_column :clients, :birth_date, :date
  end
end
