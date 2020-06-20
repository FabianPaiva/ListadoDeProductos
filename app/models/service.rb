class Service < ApplicationRecord
  belongs_to :service_type, optional: true
  validates :price, presence: true, numericality: true
  validates :service_name, presence: true

  def self.search(term, page)
    if term
      where('service_name LIKE ?', "%#{term}%").paginate(page: page, per_page: 5).order('service_name ASC')
    else
      paginate(page: page, per_page: 4).order('service_name ASC')
    end
  end

end
