class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.string :user_name
      t.string :password
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
