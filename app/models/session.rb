class Session < ApplicationRecord
  belongs_to :project
  has_many :mods, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :mods, -> { order(position: :asc) }, dependent: :destroy

  def date_include_in_project_dates?
    if date < project.start_date || date > project.end_date
      errors.add(:date, 'Must be included in project dates')
    end
  end
end
