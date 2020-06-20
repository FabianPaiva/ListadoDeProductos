class Color < ApplicationRecord
  has_many :vehicles
  validates :color_name, allow_blank:false, presence: true

  def self.search(term, page)
    if term
      where('color_name LIKE ?', "%#{term}%").paginate(page: page, per_page: 5).order('color_name ASC')
    else
      paginate(page: page, per_page: 4).order('color_name ASC')
    end
  end

  def color_for_select
    "#{color_name}"
  end

end
