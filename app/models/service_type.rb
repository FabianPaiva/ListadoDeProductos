class ServiceType < ApplicationRecord
  has_many :services
  validates :service_type_name, presence: true

  def self.search(term, page)
    if term
      where('service_type_name LIKE ?', "%#{term}%").paginate(page: page, per_page: 5).order('service_type_name ASC')
    else
      paginate(page: page, per_page: 4).order('service_type_name ASC')
    end
  end

  def service_type_for_select
      "#{service_type_name}"
  end
end
