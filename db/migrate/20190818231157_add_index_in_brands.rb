class AddIndexInBrands < ActiveRecord::Migration[5.2]
  def change
    add_index :brands, :brand_name
  end
end
