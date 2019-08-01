class CLI
    #interacts with Rakefile with matching task named - "run"
    
    def self.menu_prompt
        #prompts user to look up a book via title, author, or genre
        self.main_menu
        main_menu = true
        while main_menu       
            self.main_menu 
            choice = STDIN.gets.chomp
            #then exit
            if choice == "3"
                puts "Goodbye!"
                main_menu = false
                #then option is to enter by author
            elsif choice == "1"
                self.author
            end
        end 
    end 
    # binding.pry

    def self.main_menu
        puts "How would you like to search?"
        puts "0. By Title"
        puts "1. By Author"
        puts "2. By Genre"
        puts "3. Exit"
    end 

    def self.run
        puts "Enter title: "
        # title = STDIN.gets.chomp
        # GoogleBooks.search_by_title(title)
    end

    def self.author
        puts "Enter author name: "
        author = STDIN.gets.chomp
        GoogleBooks.get_books_from_internet(author)

    end

    def self.genre
        puts "Enter genre: "
        genre = STDIN.gets.chomp
        GoogleBooks.search(query)

    end 

    def self.search_term
        puts ""
        genre = STDIN.gets.chomp
        GoogleBooks.search(query)

    end 
end