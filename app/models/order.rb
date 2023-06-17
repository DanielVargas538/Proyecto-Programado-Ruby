class Order < ApplicationRecord
    belongs_to :client
    
    validates :date, presence: true
    validates :state, presence: true

    enum state: { 'On Time': 0, 'Late': 1, 'Delayed': 2, 'Cancelled': 3, 'Delivered': 4 }
end
  