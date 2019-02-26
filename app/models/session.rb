class Session < ApplicationRecord
  belongs_to :project
  has_many :sessions_contents
  has_many :contents, through: :sessions_contents
end
