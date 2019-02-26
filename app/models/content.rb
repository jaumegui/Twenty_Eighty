class Content < ApplicationRecord
  has_many :sessions_contents
  has_many :sessions, through: :sessions_contents
end
