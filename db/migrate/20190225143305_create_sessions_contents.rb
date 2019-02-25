class CreateSessionsContents < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions_contents do |t|
      t.references :content, foreign_key: true
      t.references :session, foreign_key: true

      t.timestamps
    end
  end
end
