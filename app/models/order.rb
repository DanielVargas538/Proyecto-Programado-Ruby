class Order < ApplicationRecord
    self.table_name = "orders"
    belongs_to :client
    belongs_to :dish

    validates :date, presence: true
    validates :state, presence: true
    
end
  
  
  