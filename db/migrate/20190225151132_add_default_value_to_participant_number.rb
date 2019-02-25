class AddDefaultValueToParticipantNumber < ActiveRecord::Migration[5.2]
  def change
  	remove_column :projects, :participant_number
  	add_column :projects, :participant_number, :integer, default: 0
  end
end
