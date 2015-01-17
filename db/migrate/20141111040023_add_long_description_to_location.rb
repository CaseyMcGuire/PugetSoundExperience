class AddLongDescriptionToLocation < ActiveRecord::Migration
  def change
   
    add_column :locations, :long_description, :text
  end
end
