class Project < ApplicationRecord
  has_many :sessions, dependent: :destroy
  belongs_to :user
  belongs_to :client
  has_many :user_projects, dependent: :destroy
  has_many :users, through: :user_projects
  validates :title, presence: true
  validates :participant_number, presence: true
  validate :end_date_after_start_date?

  def end_date_after_start_date?
    if end_date < start_date
      errors.add(:end_date, 'Must be after start date')
    end
  end
end
