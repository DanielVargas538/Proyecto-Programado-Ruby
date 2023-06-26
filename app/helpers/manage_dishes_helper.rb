module ManageDishesHelper

    def availables
        ManageDish.availables.keys.map do |available|
            [t("activerecord.attributes.dish.availables.#{available}"), available]
        end
    end
end
