class User < ActiveRecord::Base
    has_many :reviews

    #lists all user names
    def self.all_users
        self.all.collect do |u|
            u.name 
        end
    end

    #list of all user 
end
