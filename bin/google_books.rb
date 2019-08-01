URL = "https://www.googleapis.com/books/v1/volumes?q=search+terms"

class GoogleBooks

    def self.search_by_menu_prompt
        puts "How would you like to search?"
    end 

# binding.pry

    def self.main_menue
        puts "Search by another option?"
    end 

    def self.search_by_title(title)
        puts "Searching for title #{title}..."
    end

    def self.search_by_author(author)
        puts "Searching for an author #{author}..."
    end 

    def self.search_by_genre(genre)
        puts "Finding your genre #{genre}..."
    end 
    
    def self.get_books_from_internet
        api_link = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{search_term}")
        books = JSON.parse(api_link)
    end 

        # valid_books
        # valid_books = books[] 




end 