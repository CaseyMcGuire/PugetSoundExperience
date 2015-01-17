class ChangeLongDescriptionToText < ActiveRecord::Migration
  def change
     change_column :locations, :long_description, :text
  end
end
