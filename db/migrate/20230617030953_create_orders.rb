class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.integer :state, default:0
      t.belongs_to :client
      t.belongs_to :dish
      
      t.timestamps
    end
  end
end
