class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  EXPERTISES = %w[Entreprenariat Management Communication Developpement-Personnel Leadership Innovation Tech Stratégie].freeze

  has_many :projects, dependent: :destroy
  has_many :user_project_as_sevener, source: :user_projects
  has_many :user_project_as_admin, through: :projects, source: :user_projects
  has_many :comments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :access_level, inclusion: { in: %w(admin project_manager sevener)}
  validates :expertise, inclusion: { in: EXPERTISES }
end
