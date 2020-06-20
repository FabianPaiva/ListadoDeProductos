class Position < ApplicationRecord
  has_many :officials
  validates :position_name, presence: true

  def self.search(term, page)
    if term
      where('position_name LIKE ?', "%#{term}%").paginate(page: page, per_page: 5).order('position_name ASC')
    else
      paginate(page: page, per_page: 4).order('position_name ASC')
    end
  end

  def position_for_select
    "#{position_name}"
  end

end
