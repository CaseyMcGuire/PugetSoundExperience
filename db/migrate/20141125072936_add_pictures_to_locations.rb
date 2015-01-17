class AddPicturesToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :pictures, :text
  end
end
