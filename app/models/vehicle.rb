class Vehicle < ApplicationRecord
  belongs_to :client, optional: true
  belongs_to :color, optional: true
  belongs_to :vehicle_model, optional: true


  def self.search(term, page)
  if term
     where('patent_number LIKE ? or chassis_number LIKE ?', "%#{term}%", "%#{term}%").paginate(page: page, per_page: 5).order('patent_number ASC')
    else
      paginate(page: page, per_page: 4).order('patent_number ASC')
    end
  end

end
