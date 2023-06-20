module CurrentUserConcern
    extend ActiveSupport::Concern

    def current_user
        super || guet_user
    end

    def guet_user
        OpenStruct.new( name: "Guest User",
                        first_name: "Guest",
                        last_name: "User",
                        email: "guest@example.com")
    end 
end 