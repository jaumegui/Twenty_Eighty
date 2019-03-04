class Project < ApplicationRecord
  has_many :sessions, dependent: :destroy
  belongs_to :user
  belongs_to :client
  has_many :user_projects, dependent: :destroy
  has_many :users, through: :user_projects
  validates :title, presence: true
  validates :participant_number, presence: true
end
