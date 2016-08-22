class RenameColumnArtistInTableCreationstoArtistName < ActiveRecord::Migration
  def change
    rename_column :creations, :artist, :artist_name
  end
end
