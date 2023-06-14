class User < ApplicationRecord
    validates :name, presence: true
    validates :role, presence: true
    validates :status, presence: true
    validates :password, presence: true
  
    # Opcional: Agrega las asociaciones si corresponde
    # has_many :orders
  end
  