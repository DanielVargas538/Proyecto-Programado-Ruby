class AddAttributesToClients < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :first_name, :string
    add_column :clients, :last_name, :string
    add_column :clients, :phone, :integer
    add_column :clients, :address, :string
    add_column :clients, :locked, :boolean
  end
end
