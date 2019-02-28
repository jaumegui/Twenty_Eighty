class Client < ApplicationRecord
  has_many :projects
  validates :name, :email, :company, :address, :logo, presence: true
end
