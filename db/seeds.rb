require_relative '../config/environment'

Book.destroy_all
User.destroy_all
Review.destroy_all

infinite = Book.create(title: "Infinite Jest", author: "DFW", genre: "misc")
lotr = Book.create(title: "LOTR", author: "Tolkien", genre: "fantasy")
pretty = Book.create(title:"Me Talk Pretty One Day", author: "Sedaris", genre: "humor")
alchemist = Book.create(title: "The Alchemist", author: "Paul Coehlho", genre: "fantasy")
frank = Book.create(title: "Frankenstein", author: "Mary Shelley", genre: "fiction")
mastery = Book.create(title: "Mastery", author: "Robert Greene", genre: "non-fiction")


tom = User.create(name: "Tom")
gary = User.create(name: "Gary")
dave = User.create(name: "Dave")
matt = User.create(name: "Matt")
grace = User.create(name: "Grace")
marisa = User.create(name: "Marisa")

r1 = Review.create(user: tom, book: infinite, review: "heavy")
r2 = Review.create(user: gary, book: lotr, review: "epic")
r3 = Review.create(user: dave, book: frank, review: "awesome")
r4 = Review.create(user: matt, book: mastery, review: "informative")
r5 = Review.create(user: grace, book: pretty, review: "hilarious")
r6 = Review.create(user: marisa, book: alchemist, review: "inspiring")

