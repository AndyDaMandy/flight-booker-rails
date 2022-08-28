# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.destroy_all
airports = Airport.create!([
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
      },
      {
        airport_name: "Fake Airport",
        airport_code: "FAKE",
        city: "Fakesville",
        state: "Faker",
        country: "The United States of Fake"
      },
      {
        airport_name: "JFK Airport",
        airport_code: "JFK",
        city: "New York City",
        state: "New York",
        country: "USA"
      },
      {
        airport_name: "Newark Airport",
        airport_code: "EWR",
        city: "Newark",
        state: "New Jersey",
        country: "USA"
      }
      ])
Flight.destroy_all
#the format for datetime is UTC (year, month, day, hour, min, sec)
flights = Flight.create!([
  {
    departing_flight_id: 1,
    arriving_flight_id: 2,
    datetime: Time.new(2022, 1, 20, 15, 30)
  },
  {
    departing_flight_id: 2,
    arriving_flight_id: 3,
    datetime: Time.new(2022, 3, 1, 9, 15)
  },
  {
    departing_flight_id: 4,
    arriving_flight_id: 1,
    datetime: Time.new(2024, 12, 22, 1, 45)
  }
])