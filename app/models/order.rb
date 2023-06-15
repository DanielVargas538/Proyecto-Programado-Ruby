class Order < ApplicationRecord
    
    validates :date, presence: true
    validates :status, presence: true

    enum status: { 'On Time': 0, 'Late': 1, 'Delayed': 2, 'Cancelled': 3, 'Delivered': 4 }
end
  