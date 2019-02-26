class Content < ApplicationRecord
  has_many :sessions_contents, dependant: :destroy
  has_many :sessions, through: :sessions_contents
  has_many :intelligence_contents, dependent: :destroy
  has_many :intelligences, through: :intelligence_contents
  validates :chapter, inclusion: { in: %w[Communication Négociation] }
end
