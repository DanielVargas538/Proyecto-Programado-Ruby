class Order < ApplicationRecord
    self.table_name = "orders"
    include AASM
    belongs_to :client
    belongs_to :dish

    validates :state, presence: true
    validates :date, presence: true
    validates :quantity, presence: true
    
    def self.ransackable_attributes(auth_object = nil)
      %w[date state client_id dish_id]
    end

    def self.ransackable_associations(auth_object = nil)
      ["client", "dish"]
    end
    
    enum state: { 'on_time': 0, 'late': 1, 'delayed': 2, 'cancelled': 3, 'delivered': 4 }

    aasm column: 'state', enum: true do
      state :on_time, initial: true
      state :late
      state :delayed
      state :cancelled
      state :delivered

      event :mark_as_late do
        transitions from: :on_time, to: :late
      end

      event :mark_as_delayed do
        transitions from: [:on_time, :late], to: :delayed
      end
    end

end
