class Content < ApplicationRecord
  validates :chapter, inclusion: { in: %w[ Communication Développement-Personnel Innovation Management Négociation Stratégie Leadership ] }
end
