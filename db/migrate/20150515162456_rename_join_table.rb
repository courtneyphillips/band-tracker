class RenameJoinTable < ActiveRecord::Migration
  def change
    rename_table :concerts, :bands_venues
  end
end
