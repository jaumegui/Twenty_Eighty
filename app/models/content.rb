class Content < ApplicationRecord
	validates :chapter, inclusion: { in: %w[ Communication Developpement-Personnel Innovation Management Négociation Stratégie Leadership ] }
end
