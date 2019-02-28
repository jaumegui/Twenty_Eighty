class AddPositionToMods < ActiveRecord::Migration[5.2]
  def change
    add_column :mods, :position, :integer
    Session.all.each do |session|
    	session.modss.order(:updated_at).each.with_index(1) do |mod, index|
        mod.update_column :position, index
     	end
  	end
  end
end
