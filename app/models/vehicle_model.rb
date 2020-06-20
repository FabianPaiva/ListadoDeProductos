class VehicleModel < ApplicationRecord
    belongs_to :brand
    has_many :vehicles
    validates :brand_id, presence: true
    validates :year_of_production, presence: true
    validates :vehicle_model_name, presence: true

    def self.search(term, page)
        if term
            where('vehicle_model_name LIKE ? or year_of_production LIKE ?', "%#{term}%", "%#{term}%").paginate(page: page, per_page: 5).order('vehicle_model_name ASC')
        else
            paginate(page: page, per_page: 4).order('vehicle_model_name ASC')
        end
    end

    def model_for_select
        "#{vehicle_model_name}"
    end

end
