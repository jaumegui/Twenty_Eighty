class Client < ApplicationRecord
  has_many :projects, dependent: :destroy
  validates :name, :email, :company, :address, :logo, presence: true
end
