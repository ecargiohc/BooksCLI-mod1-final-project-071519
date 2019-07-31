class User < ActiveRecord::Base
    has_many :reviews

    #lists all user names
    def self.all_users
        self.all.collect do |u|
            u.name 
        end
    end

    #finds name of given user
    def find_name(name)
        self.all.find do |n|
            n.name == name
        end
    end

    #lists all of the favorites of all of users
    def all_favorites
        self.all.collect do |u|
            u.favorites 
        end
    end

    #finds favorite of a given user by given favorite?
    # def user_favorite
end
