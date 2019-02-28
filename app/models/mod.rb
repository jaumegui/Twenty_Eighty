class Mod < ApplicationRecord
  belongs_to :session
  validates :chapter, inclusion: { in: %w[ Communication Developpement-Personnel Innovation Management Négociation Stratégie Leadership ] }
  validates :intel1, inclusion: { in: %w[ Logico-Mathématique Verbo-Linguistique Spatiale Intrapersonnelle Interpersonnelle Kinesthesique Musicale-Rythmique ]}
  validates :intel2, inclusion: { in: %w[ Logico-Mathématique Verbo-Linguistique Spatiale Intrapersonnelle Interpersonnelle Kinesthesique Musicale-Rythmique ]}

  def user
    session.project.user
  end
end
