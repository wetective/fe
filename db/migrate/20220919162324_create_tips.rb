class CreateTips < ActiveRecord::Migration[6.1]
  def change
    create_table :tips do |t|
      t.string :f_name
      t.string :l_name
      t.string :city
      t.string :state
      t.string :zip
      t.integer :phone
      t.boolean :firsthand
      t.text :details
      t.string :uid

      t.timestamps
    end
  end
end
