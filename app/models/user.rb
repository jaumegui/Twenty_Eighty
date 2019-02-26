class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :projects, dependent: :destroy
  has_many :user_project_as_sevener, source: :user_projects
  has_many :user_project_as_admin, through: :projects, source: :user_projects
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
