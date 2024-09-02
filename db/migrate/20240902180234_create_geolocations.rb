class CreateGeolocations < ActiveRecord::Migration[7.0]
  def change
    create_table :geolocations do |t|
      t.string :ip
      t.string :url
      t.float :latitude
      t.float :longitude
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
