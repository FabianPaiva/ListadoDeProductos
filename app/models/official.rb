class Official < ApplicationRecord
    belongs_to :position, optional: true
    validates :document_number, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :address, presence: true

    def self.search(term, page)
        if term
            where('address LIKE ? or first_name LIKE ? or last_name LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%").paginate(page: page, per_page: 5).order('last_name ASC')
        else
            paginate(page: page, per_page: 4).order('last_name ASC, "%#{term}%"')
        end
    end

end
