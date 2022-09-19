class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
