class Order < ApplicationRecord
    belongs_to :client
    belongs_to  :dish

    validates :date, presence: true
    validates :state, presence: true
    
    enum state: { 'on_time': 0, 'late': 1, 'delayed': 2, 'cancelled': 3, 'delivered': 4 }
end
  
  
  