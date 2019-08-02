class CLI
    #interacts with Rakefile with matching task named - "run"
    def self.run
        puts "Greetings fellow bookworm! What is your name?"
        user_name = STDIN.gets.chomp
        user = User.find_by(name: "#{user_name}")
        if user == nil
            puts "Welcome!"
            user = User.create(name: "#{user_name}")
        else
            puts "Welcome back!"
        end

        puts "What would you like to do? Enter a number."
        puts "1. search for a new book"
        puts "2. see your reviews"
        puts "3. search for reviews on a book,"
        puts "4. see a book description"
        puts "5. write a review"
        puts "6. update or delete your review?"
        puts "7. See all books"

        user_choice = STDIN.gets.chomp
        if user_choice == "1"
            self.search
        elsif user_choice == "2"
            self.see_user_review
        elsif user_choice == "3"
            self.see_book_reviews
        elsif user_choice == "4"
            self.see_book_description
        elsif user_choice == "5"
            self.create_review(user)
        elsif user_choice == "6"
            self.update_or_delete_review
        elsif user_choice == "7"
            self.see_books
        else
            "Ok, bye for now!"
        end

    end

    def self.search
        puts "Enter key word or title:"
        query = STDIN.gets.chomp
        results = GoogleBooks.search(query)
        results.each do |result|
            puts result["title"]
        end
    
        puts "Would you like to save the first result?"
        user_choice = STDIN.gets.chomp.downcase
        if user_choice == "y"
            book = results[0]
            Book.create(title: book["title"], author: book["author"], genre: book["categories"])
            puts "saved!"
        else
            puts "Goodbye."
        end
    end

    def self.see_books
        if Book.all.length == 0
            puts "There are no books saved. :("
        end
        Book.all.each do |book|
            puts "#{book.title} by #{book.author}" #why doesn't book author print?
        end
    end

    def self.see_user_reviews
        Review.all.collect do |user|
            if user == self
                 puts "#{review.user}"
            else 
                puts "You don't have any reviews on this book yet"
            end
        end
    end

    def self.see_book_reviews
    end

    def self.see_book_description
        contents = GoogleBooks.search(query)
        contents.each do |content|
            puts content["description"]
        end

        puts "Would you like to see this book's synopsis?"
        user_choice = STDIN.gets.chomp.downcase
        if user_choice == 'y'
            contents[0]
        else
            puts ""
        end
    end

    def self.create_review(user)
        puts "So you have opinions. Which book?"
        book_choice = STDIN.gets.chomp
        book = Book.find_by(title: book_choice)
        if book == nil
            puts "Book not found :("
            return
        end
        puts "Go ahead and write your shameless thoughts:"
        user_review = STDIN.gets.chomp.downcase
        new_review = Review.create(user: user, book: book, review: user_review)
        puts "Thanks for sharing!"
    end

    def self.update_or_delete_review
    end
end
    