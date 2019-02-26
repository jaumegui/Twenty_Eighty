class Project < ApplicationRecord
  has_many :sessions, dependent: :destroy
  belongs_to :user
  has_many :user_projects
  validates :title, presence: true
  validates :participant_number, presence: true
end
