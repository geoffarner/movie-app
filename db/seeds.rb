# Actor.create({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
# Actor.create({ first_name: "Clint", last_name: "Eastwood", known_for: "Outlaw Josey Wales" })
# Actor.create({ first_name: "Keanu", last_name: "Reeves", known_for: "Matrix" })
# Actor.create({ first_name: "Paul", last_name: "Newman", known_for: "Cool Hand Luke" })

# Movie.create({ title: "Jaws", year: 1975, plot: "A hungry hungry shark gets revenge on fishermen." })
# Movie.create({ title: "Tombstone", year: 1993, plot: "Four brothers and some friends pick a fight with some cowboys." })
# Movie.create({ title: "Any Which Way but Loose", year: 1978, plot: "A man and his Orangutan don't play nice with a motorcycle gang." })

# Genre.create({ name: "Thriller" })
# Genre.create({ name: "Western" })
# Genre.create({ name: "Comedy" })

MovieGenre.create({ movie_id: 1, genre_id: 1 })
MovieGenre.create({ movie_id: 2, genre_id: 2 })
MovieGenre.create({ movie_id: 3, genre_id: 3 })
