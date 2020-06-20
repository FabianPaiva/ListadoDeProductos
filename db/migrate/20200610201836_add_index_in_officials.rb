class AddIndexInOfficials < ActiveRecord::Migration[5.2]
  def change
    add_index :officials, [:first_name, :last_name], unique: true
  end
end
