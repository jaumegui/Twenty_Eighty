class CreateMods < ActiveRecord::Migration[5.2]
  def change
    create_table :mods do |t|
     	t.string :title
     	t.string :format
     	t.integer :duration
     	t.string :chapter
     	t.text :description
     	t.string :intel1
     	t.string :intel2
      t.references :session

      t.timestamps
    end
  end
end

# mod = content copy of the libary
