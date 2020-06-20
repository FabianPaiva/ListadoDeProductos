class CreateServiceTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :service_types do |t|
      t.string :service_type_name
      t.timestamps
    end
  end
end
