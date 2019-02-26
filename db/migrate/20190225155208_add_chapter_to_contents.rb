class AddChapterToContents < ActiveRecord::Migration[5.2]
  def change
  	add_column :contents, :chapter, :string 
  end
end
