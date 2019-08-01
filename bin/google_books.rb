URL = "https://www.googleapis.com/books/v1/volumes?q="

class GoogleBooks
    def self.search(query)
        puts "searching for: #{query}"
        response = RestClient.get(URL + query)
        json = JSON.parse(response.body)

        #if user input is title, output "description" along with author info, "averageRating"
        #"pageCount", and "categories"(genre)
        #if user input is author, output  list of this #{author}'s books and each of the book's avg. rating
        #if user input is a "categories" key word(s), output list of (book)titles that 
        #have that word in its "categories"(genre) hash
        
        books = json["items"]
        books.map do |book|
            #this object has access to title, author, categories(genre), averageRating, description
            #notify user; if 'nil', means 'N/A'
            book["volumeInfo"]
        end
    end
end
   