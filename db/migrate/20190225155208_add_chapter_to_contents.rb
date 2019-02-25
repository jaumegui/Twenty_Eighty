class AddChapterToContents < ActiveRecord::Migration[5.2]
  def change
  	add_column :contents, :chapter, :string, inclusion: { in: %w( Communication Developpement-Personnel Innovation Management Négociation Stratégie Leadership ) }
  end
end
