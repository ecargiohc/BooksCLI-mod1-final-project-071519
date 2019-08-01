class User < ActiveRecord::Base
    has_many :reviews

    #delete a users previous review
    #list of all user 

    def self.delete_this_users_review(a_review)
        # review_delete = Review.all.destroy
        # binding.pry
        # puts "deleted!"         
    end
    
    def self.add_review(new_review)
    end
end 