class RemoveColumnInOfficials < ActiveRecord::Migration[5.2]
  def change
    remove_column :officials, :position
  end
end
