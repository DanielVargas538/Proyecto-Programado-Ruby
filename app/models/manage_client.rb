class ManageClient < ApplicationRecord
    self.table_name = "clients"
    has_many :orders
    has_many :dishes, through: :orders

    validates :first_name, presence: true, length: { minimum: 3, maximum: 10 }
    validates :last_name, presence: true, length: { minimum: 5, maximum: 15 }
    validates :phone, presence: true
    #validates :user_name, presence: true
    #validates :password, presence: true
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/}
    validates :address, presence: true
    validates :locked, presence: true

end
