URL = "https://www.googleapis.com/books/v1/volumes?q=search+terms"

class GoogleBooks
    def self.search_by_title(title)
        puts "Searching for title #{title}..."
    end

    def self.search_by_author(author)
        puts "Searching for an author #{author}..."
    end 

    def self.search_by_genre(genre)
        puts "Finding your genre #{genre}..."
    end 
    
    def self.get_books_from_internet(search_term)
        api_link = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{search_term}")
        books = JSON.parse(api_link)

        binding.pry

        # valid_books
        # valid_books = books[]
    end 




end 