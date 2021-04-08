class Centro < ApplicationRecord
	belongs_to :empresa
	has_many :trabajadors
end
