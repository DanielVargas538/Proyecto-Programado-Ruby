module OrdersHelper

    def states
        Order.states.keys.map do |state|
            [t("activerecord.attributes.order.status.#{state}"), state]
        end
    end
end