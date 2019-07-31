class CLI
    def self.run
        puts "Enter a search term:"
        query = STDIN.gets.chomp
        GoogleBooks.search(query)
    end
end