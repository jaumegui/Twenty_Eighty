class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.integer :participant_number
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
