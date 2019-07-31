class CLI
    #interacts with Rakefile with matching task named - "run"
    def self.run
        puts "Enter title: "
        title = STDIN.gets.chomp
        GoogleBooks.search_by_title(title)
    end

    def self.author
        puts "Enter author name: "
        author = STDIN.gets.chomp
        GoogleBooks.search(query)
    end

    def self.genre
        puts "Enter genre: "
        genre = STDIN.gets.chomp
        GoogleBooks.search(query)

    end 
    

  
end