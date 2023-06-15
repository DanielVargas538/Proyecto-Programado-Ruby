class User < ApplicationRecord

    validates :name, presence: true, length: { maximum: 15 }
    validates :role, presence: true
    validates :status, presence: true
    validates :password, presence: true
  
end
  