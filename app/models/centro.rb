class Centro < ApplicationRecord
	belongs_to :empresa
	has_many :trabajadors, dependent: :delete_all
end
