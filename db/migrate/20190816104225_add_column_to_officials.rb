class AddColumnToOfficials < ActiveRecord::Migration[5.2]
  def change
    add_column :officials, :birth_date, :date
    add_column :officials, :limite_credito, :string
  end
end
