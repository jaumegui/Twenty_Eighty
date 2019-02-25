class Intelligence < ApplicationRecord
	validates :name, :description, presence: true
end
