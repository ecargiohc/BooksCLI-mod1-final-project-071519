class Book < ActiveRecord::Base
    has_many :reviews
    
    #instance of a book review; reviewS of a specific book
    def book_review
        Review.all.select do |r|
            r.book == self
        end
    end
    
    #instance of book reviews; total number of book reviews of a specific book
    def total_reviews
        Review.all.select {|r|
            r.book == self}.count
    end

    #List a book with the most user reviews


     
end