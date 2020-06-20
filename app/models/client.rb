class Client < ApplicationRecord
  validates :address, presence: true
  validates :birth_date, presence: true
  validates :customer_type, presence: true
  validates :document_number, presence: true, uniqueness: true
  validates :limite_credito, presence: true
  validates :first_name, presence: true
  validates :gender, presence: true
  validates :last_name, presence: true
  validates :telephone, presence: true, numericality: true

  def self.search(term, page)
    if term
      where('document_number LIKE ? or first_name LIKE ? or last_name LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%").paginate(page: page, per_page: 5).order('document_number ASC')
    else
      paginate(page: page, per_page: 4).order('document_number ASC')
    end
  end

  def client_for_select
    "#{last_name}"
  end
end
