class CreateOfficials < ActiveRecord::Migration[5.2]
  def change
    create_table :officials do |t|
      t.integer :document_number , nullable: false
      t.string :first_name , nullable:  false
      t.string :last_name, nullable: false
      t.string :position, nullable: false
      t.integer :phone_number
      t.string :address, nullable: false
      t.string :gender, nullable:false
      t.string :civil_status
      t.timestamps
    end
  end
end
