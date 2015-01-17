class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :logo_url
      t.string :short_description
    

      t.timestamps
    end
  end
end
