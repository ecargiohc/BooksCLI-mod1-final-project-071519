Book.destroy_all
User.destroy_all
Review.destroy_all

infinite = Book.create(title: "Infinite Jest", author: "DFW", genre: "misc")
lotr = Book.create(title: "LOTR", author: "Tolkein", genre: "fantasy")
pretty = Book.create(title:"Me Talk Pretty One Day", author: "Sedaris", genre: "comedy")

tom = User.create(name: "Tom", favorites:"fantasy, fiction")

Review.create(user: tom, book: infinite, review: "heavy")