module ManageUsersHelper

    def roles
        User.roles.keys.map do |rol|
            [t("activerecord.attributes.user.roles.#{rol}"), rol]
        end
    end
end
