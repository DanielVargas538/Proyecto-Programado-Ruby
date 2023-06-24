class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.binary :photo
      t.boolean :available

      t.timestamps
    end
  end
end
