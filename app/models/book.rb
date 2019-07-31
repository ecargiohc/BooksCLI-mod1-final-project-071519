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

    

end