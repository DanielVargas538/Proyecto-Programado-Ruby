class Client < ApplicationRecord

    validate :first_name,presence: true
    validate :last_name,presence: true
    validate :phone,presence: true
    validate :user_name,presence: true
    validate :email,presence: true,format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
    validate :password,presence: true,length: { minimum: 6 }


end
