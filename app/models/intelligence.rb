class Intelligence < ApplicationRecord
  validates :name, :description, presence: true
  has_many :intelligence_contents, dependent: :destroy
  has_many :contents, through: :intelligence_contents
end
