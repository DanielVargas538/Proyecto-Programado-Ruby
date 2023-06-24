class Order < ApplicationRecord
    belongs_to :client
    
    validates :date, presence: true
    validates :state, presence: true
  
    
end
  
  
  