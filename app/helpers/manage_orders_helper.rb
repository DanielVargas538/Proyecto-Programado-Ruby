module ManageOrdersHelper

    def states
        ManageOrder.states.keys.map do |state|
            [t("activerecord.attributes.order.status.#{state}"), state]
        end
    end
end
