class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :format
      t.integer :duration
      t.text :description
      t.string :chapter
      t.string :intel1
      t.string :intel2

      t.timestamps
    end
  end
end
