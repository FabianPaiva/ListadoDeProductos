class AddRelationBetweenServicesAndServiceTypes < ActiveRecord::Migration[5.2]
  def change
    add_reference :service_types, :services
  end
end
