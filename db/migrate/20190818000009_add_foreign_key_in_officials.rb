class AddForeignKeyInOfficials < ActiveRecord::Migration[5.2]
  def change
    add_column :officials, :position_id,  :integer
    add_index :officials,:position_id
  end
end
