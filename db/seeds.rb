require_relative '../config/environment'

Book.destroy_all
User.destroy_all
Review.destroy_all

infinite = Book.create(title: "Infinite Jest", author: "DFW", genre: "misc")
lotr = Book.create(title: "LOTR", author: "Tolkein", genre: "fantasy")
pretty = Book.create(title:"Me Talk Pretty One Day", author: "Sedaris", genre: "comedy")

tom = User.create(name: "Tom")
gary = User.create(name: "Gary")
dave = User.create(name: "Dave")
randy = User.create(name: "Randy")

r1 = Review.create(user: tom, book: infinite, review: "heavy")
r2 = Review.create(user: tom, book: lotr, review: "cool")
r3 = Review.create(user: tom, book: pretty, review: "hilarious")
r4 = Review.create(user: tom, book: lotr, review: "rad")
r5 = Review.create(user: tom, book: pretty, review: "fun")
r6 = Review.create(user: tom, book: infinite, review: "crass")

