class Session < ApplicationRecord
  belongs_to :project
  has_many :mods, -> { order(position: :asc) }, dependent: :destroy
end
