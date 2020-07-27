require 'pry'

User.delete_all
Movie.delete_all


jaws = Movie.create(title: "Jaws", genre: "Action", length: 139)
fight_club = Movie.create(title: "Fight Club", genre: "Drama", length: 142)
scooby = Movie.create(title: "Scooby Doo", genre: "Kids", length: 120)
titanic = Movie.create(title: "Titanic", genre: "Drama", length: 210)
notebook = Movie.create(title: "The Notebook", genre: "Drama", length: 152)
onward = Movie.create(title: "Onward", genre: "Kids", length: 110)
star_wars = Movie.create(title: "Star Wars", genre: "Action", length: 134)
amelie = Movie.create(title: "Amelie", genre: "Foreign", length: 144)
star_trek = Movie.create(title: "Star Trek", genre: "Action", length: 125)
schindler = Movie.create(title: "Schindler's List", genre: "Drama", length: 111)
blazing_saddles = Movie.create(title: "Blazing Saddles", genre: "Comedy", length: 138)


karen = User.create(username: "karenflyn", password: "Lalajourbon")
penny = User.create(username: "pennyjicksy", password: "Bonjour")
rebecca = User.create(username: "rebeccanyc", password: "justkidding")
gloria = User.create(username: "gloriaaaMd", password: "hyyou")
katjia = User.create(username: "katjiapal", password: "gigs")
jessica = User.create(username: "jessicaree", password: "meandyou")

r1 = Review.create(movie_id: jaws.id, user_id: karen.id, movie_rating: 4, review_comment: "I loved this movie but it was too dark.")
r2 = Review.create(movie_id: jaws.id, user_id: katjia.id, movie_rating: 1, review_comment: "I hated this movie. Too many sharks.")
r3 = Review.create(movie_id: fight_club.id, user_id: penny.id, movie_rating: 5, review_comment: "The perfect movie. Brad Pitt is great.")
r4 = Review.create(movie_id: schindler.id, user_id: rebecca.id, movie_rating: 5, review_comment: "Steven Spielberg did it again!")
r5 = Review.create(movie_id: scooby.id, user_id: gloria.id, movie_rating: 2, review_comment: "Terrible Animation.")
r6 = Review.create(movie_id: titanic.id, user_id: jessica.id, movie_rating: 4, review_comment: "You can feel the love through the screen. But Jack could've fit on the raft.")
r7 = Review.create(movie_id: notebook.id, user_id: karen.id, movie_rating: 3, review_comment: "Too sappy.")
r8 = Review.create(movie_id: onward.id, user_id: penny.id, movie_rating: 4, review_comment: "My kid loved this movie.")
r9 = Review.create(movie_id: fight_club.id, user_id: katjia.id, movie_rating: 5, review_comment: "Wow wow wow!")
r10 = Review.create(movie_id: amelie.id, user_id: karen.id, movie_rating: 4, review_comment: "Beautiful film.")
r11 = Review.create(movie_id: star_trek.id, user_id: rebecca.id, movie_rating: 2, review_comment: "Very inaccurate.")
r12 = Review.create(movie_id: blazing_saddles.id, user_id: karen.id, movie_rating: 3, review_comment: "So vulgar.")
r13 = Review.create(movie_id: fight_club.id, user_id: jessica.id, movie_rating: 2, review_comment: "not appropriate")
r14 = Review.create(movie_id: jaws.id, user_id: gloria.id, movie_rating: 3, review_comment: "not as funny as i expected")
r15 = Review.create(movie_id: amelie.id, user_id: jessica.id, movie_rating: 5, review_comment: "best movie ever")
r16 = Review.create(movie_id: amelie.id, user_id: katjia.id, movie_rating: 4, review_comment: "it was a nice movie, but i'm single so i remove one star")
r17 = Review.create(movie_id: amelie.id, user_id: gloria.id, movie_rating: 5, review_comment: "this is a must see!! ")