class CLI
    #interacts with Rakefile with matching task named - "run"
    def self.run
        puts "Greetings fellow bookworm!"
        puts "Would you like to 1. search for a new book or, 2. see your favorites?"
        user_choice = STDIN.gets.chomp
        if user_choice == "1"
            self.search
        else
            self.see_favorites
        end
    end

    def self.search
        puts "Enter search term:"
        query = STDIN.gets.chomp
        results = GoogleBooks.search(query)
        results.each do |result|
            puts result["title"]
        end

        puts "Would you like to save your first result?"
        user_choice = STDIN.gets.chomp.downcase
        if user_choice == "y"
            book = results[0]
            Book.create(title: book["title"], author: book["author"], genre: book["categories"])
            puts "saved!" 
        else
            puts "Goodbyee"
        end
    end

    def self.see_favorites
        if Book.all.length == 0
            puts "You don't have any favorites :("
        end
        Book.all.each do |book|
            puts "#{book.title} by #{book.author}"
        end
    end
    
end
    