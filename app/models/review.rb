class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :book

#lists content of a given book
    def content(book)
        self.all.map do |r|
            r.content 
        end
    end

    def self.user_id
        self.all.map do |r|
            r.user_id
        end
    end

    def self.book_id
        self.all.map do |r|
            r.book_id
        end
    end




end
