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
        
        is_looping = true
        while is_looping 
            puts "What would you like to do? Enter a number."
            puts "1. Search for a book"
            puts "2. Read up on a book's plot"
            puts "3. Look at others' reviews"
            puts "4. See your reviews" 
            puts "5. Write a review!"
            puts "6. Update your review(s)"
            puts "7. Delete your review(s)"
            puts "8. See your saved list of books to review"
            puts "9. Just get me out of here"
        
            user_choice = STDIN.gets.chomp
            if user_choice == "1" #DONE
                self.search
            elsif user_choice == "2" #DONE
                self.see_book_description
            elsif user_choice == "3" #DONE
                self.see_book_reviews
            elsif user_choice == "4" #DONE
                self.see_user_reviews(user)
            elsif user_choice == "5" #CREATE/ADD DONE
                self.create_review(user) 
            elsif user_choice == "6"  #UPDATES DONE
                self.update_review(user)
            elsif user_choice == "7" #DELETES DONE
                self.delete_review(user) 
            elsif user_choice == "8" #DONE
                self.see_books     
            elsif user_choice == "9" #DONE
                puts "Ok, bye for now!"
                is_looping = false
            end
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

    def self.see_user_reviews(user)
        # binding.pry
        Review.all.filter do |review|
            if review.user.name == user.name
                 puts "Your thoughts on '#{review.book.title}': '#{review.review}'"
            # else 
            #     puts "You don't have any reviews on this book yet :("
            end
        end
    end

    def self.see_book_reviews #DONE
        puts "Which book's reviews would you like to see? Enter title:"
        book_title = STDIN.gets.chomp
        book_reviews = Review.all.filter{|r| r.book.title == book_title}
        if book_reviews.count > 0
            book_reviews.each do |r|
                puts "'#{r.review}', says #{r.user.name}"
            end
        else
            puts "Nobody has reviewed on this book yet"
        end 
    end

    def self.see_book_description
        puts "Enter the synopsis of the book you'd like to see:"
        user_input = STDIN.gets.chomp
        results = GoogleBooks.search(user_input)
        results.each do |result|
            puts result["description"]
        end
    end

    def self.create_review(user)
        puts "So you have opinions. Which book? Enter title:"
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

    def self.update_review(user)
        puts "Which review would you like to update?"
        counter = 1
        users_review = user.reviews.collect do |r|
            puts "#{counter}. #{r.book.title}: #{r.review}" #displays list of user's reviews in a readable fashion
            counter += 1
        end
        puts "Your choice:"
        user_input = STDIN.gets.chomp
        user_input = user_input.to_i #.to_i insures user_input is always an integer
        display_review = user.reviews[user_input-1].review #gives access to previous 'filter' object, giving access to the review attribute so that review can be altered by user 
        display_review_object = user.reviews[user_input-1]
        # binding.pry
        puts display_review
        puts "Your update:"
        user_input = STDIN.gets.chomp
        display_review_object.update(review: user_input)
        display_review_object.save
        puts display_review_object.review
        # binding.pry
    end


    def self.delete_review(user)
        puts "Which of your reviews would you like to trash?"
        counter = 1 #repeat process as .update 
        users_review = user.reviews.collect do |r|
            puts "#{counter}. #{r.book.title}: #{r.review}" #displays list of user's reviews in a readable fashion
            counter += 1
        end
        puts "Choose review to remove:"
        user_input = STDIN.gets.chomp
        user_input = user_input.to_i 
        display_review = user.reviews[user_input-1].review 
        display_review_object = user.reviews[user_input-1]
        display_review_object.delete
    end
end
    