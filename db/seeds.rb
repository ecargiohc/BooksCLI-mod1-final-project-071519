require_relative '../config/environment'

Book.destroy_all
User.destroy_all
Review.destroy_all

infinite = Book.create(title: "Infinite Jest", author: "DFW", genre: "misc")
lotr = Book.create(title: "LOTR", author: "Tolkein", genre: "fantasy")
pretty = Book.create(title:"Me Talk Pretty One Day", author: "Sedaris", genre: "comedy")

tom = User.create(name: "Tom", favorites:"fantasy, fiction")
gary = User.create(name: "Gary", favorites:"fantasy, fiction")
dave = User.create(name: "Dave", favorites:"fantasy, fiction")
randy = User.create(name: "Randy", favorites:"fantasy, fiction")

r1 = Review.create(user: tom, book: infinite, review: "heavy")
r2 = Review.create(user: tom, book: lotr, review: "heavy")
r3 = Review.create(user: tom, book: pretty, review: "heavy")
r4 = Review.create(user: tom, book: lotr, review: "heavy")
r5 = Review.create(user: tom, book: pretty, review: "heavy")
r6 = Review.create(user: tom, book: infinite, review: "heavy")

