class Project < ApplicationRecord
	has_many :sessions, dependent: :destroy
	has_and_belongs_to_many :users, through: :user_projects
	validates :title, presence: true
	validates :participant_number, presence: true
end
