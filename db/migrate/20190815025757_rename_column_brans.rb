class RenameColumnBrans < ActiveRecord::Migration[5.2]
  def change
    rename_column :brands, :description, :brand_name
  end
end
