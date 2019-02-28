class Session < ApplicationRecord
  belongs_to :project
  has_many :mods, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :mods, -> { order(position: :asc) }, dependent: :destroy
end
