class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :access_level, :string, inclusion: { in: %w( admin user sevener)} , default: "sevener"
    add_column :users, :expertise, :string
  end
end
