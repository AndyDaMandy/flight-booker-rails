# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
airports = Airport.create([
    {   
        airport_name: "Hartsfield-Jackson Atlanta International Airport",
        airport_code: "ATL", 
        city: "Atlanta", 
        state: "GA", 
        country: "USA" 
    },
      {
        airport_name: "Dallas/Fort Worth International Airport",
        airport_code: "DFW",
        city: "Dallas & Ft. Worth",
        state: "TX",
        country: "USA"
      },
      {
        airport_name: "Denver International Airport",
        airport_code: "DEN",
        city: "Denver",
        state: "CO",
        country: "USA"
      },
      {
        airport_name: "Tokyo International Airport",
        airport_code: "HND",
        city: "Tokyo",
        state: "Tokyo",
        country: "Japan"
      }
      ])