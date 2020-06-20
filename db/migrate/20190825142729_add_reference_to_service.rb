class AddReferenceToService < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :service_types
  end
end
