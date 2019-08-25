Movie.destroy_all
Review.destroy_all
Director.destroy_all

puts "Starting to create movies"

Director.create!([{ name: "Gaspar Noé" }, { name: "Nuri Ceylan" }, { name: "Woody Allen" }])

Movie.create!([
  { 
    name: "Climax",
    poster_url: "https://m.media-amazon.com/images/M/MV5BMjllYmQ2OGQtN2IxZC00ODJiLWI4NjQtYmNlZjYzNzUzYjkyXkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_SX300.jpg", director_id: Director.find_by(name: "Gaspar Noé").id
  },
  {
    name: "Winter Sleep",
    poster_url: "https://m.media-amazon.com/images/M/MV5BNTU1NTY2Mzg5M15BMl5BanBnXkFtZTgwNDcwNjM5MTE@._V1_SX300.jpg",
    director_id: Director.find_by(name: "Nuri Ceylan").id
  },
  {
    name: "Annie Hall",
    poster_url: "https://m.media-amazon.com/images/M/MV5BZDg1OGQ4YzgtM2Y2NS00NjA3LWFjYTctMDRlMDI3NWE1OTUyXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg", director_id: Director.find_by(name: "Woody Allen").id
  }
])


Review.create!([
  {
    rating: 5, movie_id: Movie.first.id
  },
  {
    rating: 4, movie_id: Movie.last.id
  },
  {
    rating: 5, movie_id: Movie.find_by(name: "Winter Sleep").id
  },
  {
    rating: 3, movie_id: Movie.find_by(name: "Climax").id
  },
  {
    rating: 3, movie_id: Movie.find_by(name: "Climax").id
  }
])

puts "Finished creating Directors: #{Director.count}, Movies: #{Movie.count}, Reviews: #{Review.count}"