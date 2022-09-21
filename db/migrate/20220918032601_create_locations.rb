class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :lng
      t.string :lat
      t.string :address
      t.string :url
      t.string :city

      t.timestamps
    end
  end
end
