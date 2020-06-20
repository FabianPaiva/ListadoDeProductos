class Brand < ApplicationRecord
 has_many :vehicle_models
 validates :brand_name, presence: true

 def self.search(term, page)
  if term
   where('brand_name LIKE ?', "%#{term}%").paginate(page: page, per_page: 5).order('brand_name ASC')
  else
   paginate(page: page, per_page: 4).order('brand_name ASC')
  end
 end

end
