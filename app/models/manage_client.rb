class ManageClient < ApplicationRecord
    self.table_name = "clients"
    has_many :orders
    has_many :dishes, through: :orders

    validates :first_name,presence: true
    validates :last_name,presence: true
    validates :phone,presence: true
    validates :user_name,presence: true
    validates :email,presence: true,format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
    validates :password,presence: true,length: { minimum: 6 }
    validates :address, presence: true
    validates :locked, inclusion: [true, false]
    
end
