class Book < ActiveRecord::Base
    has_many :reviews

    #queries here
    def self.title
        self.all.map do |b|
            b.title
        end
    end

    def self.author
        self.all.map do |b|
            b.author
        end
    end

    def self.genre
        self.all.map do |b|
            b.genre 
        end
    end

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
end