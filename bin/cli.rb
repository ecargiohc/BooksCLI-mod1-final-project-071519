class CLI
    #interacts with Rakefile with matching task named - "run"
    def self.run
        puts "Greetings fellow bookworm!"
        puts "enter search term:"
        query = STDIN.gets.chomp
        results = GoogleBooks.search(query)
        results.each do |result|
            puts result["title"]
        end
    end
    
end
    