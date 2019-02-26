class Content < ApplicationRecord
	validates :chapter, inclusion: { in: %w[ Communication Developpement-Personnel Innovation Management Négociation Stratégie Leadership ] }
  has_many :sessions_contents
  has_many :sessions, through: :sessions_contents
end
