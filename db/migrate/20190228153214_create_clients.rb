class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :address
      t.string :logo

      t.timestamps
    end
  end
end
