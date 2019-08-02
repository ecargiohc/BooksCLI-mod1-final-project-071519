require_relative '../config/environment'

Book.destroy_all
User.destroy_all
Review.destroy_all

infinite = Book.create(title: "Infinite Jest", author: "DFW", genre: "misc")
lotr = Book.create(title: "LOTR", author: "Tolkien", genre: "fantasy")
pretty = Book.create(title:"Me Talk Pretty One Day", author: "Sedaris", genre: "comedy")

tom = User.create(name: "Tom")
gary = User.create(name: "Gary")
dave = User.create(name: "Dave")
matt = User.create(name: "Matt")
grace = User.create(name: "Grace")
marisa = User.create(name: "Marisa")

r1 = Review.create(user: tom, book: infinite, review: "heavy")
r2 = Review.create(user: gary, book: lotr, review: "cool")
r3 = Review.create(user: dave, book: pretty, review: "hilarious")
r4 = Review.create(user: matt, book: lotr, review: "rad")
r5 = Review.create(user: grace, book: pretty, review: "fun")
r6 = Review.create(user: marisa, book: infinite, review: "crass")

