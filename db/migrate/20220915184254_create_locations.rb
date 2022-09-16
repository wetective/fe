class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.point :lat_long

      t.timestamps
    end
  end
end
