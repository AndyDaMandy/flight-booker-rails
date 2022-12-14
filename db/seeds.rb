# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
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
#the format for datetime is UTC (year, month, day, hour, min, sec)
#date format is year, month, date
flights = Flight.create!([
  {
    departing_airport_id: 1,
    arrival_airport_id: 2,
    departure_date: Date.new(2022, 1, 20),
    departure_time: Time.new(2022, 1, 20, 10, 00),
    flight_length: 3.5,
    arrival_date: Date.new(2022, 1, 20),
    arrival_time: Time.new(2022, 1, 20, 15, 30)
  },
  {
    departing_airport_id: 2,
    arrival_airport_id: 3,
    departure_date: Date.new(2023, 2, 28),
    departure_time: Time.new(2023, 2, 28, 6, 00),
    flight_length: 6,
    arrival_date: Date.new(2023, 2, 28),
    arrival_time: Time.new(2023, 2, 28, 11, 00)
  },
  {
    departing_airport_id: 4,
    arrival_airport_id: 1,
    departure_date: Date.new(2024, 12, 20),
    departure_time: Time.new(2024, 12, 20, 6, 00),
    flight_length: 8,
    arrival_date: Date.new(2024, 12, 20),
    arrival_time: Time.new(2024, 12, 20, 1, 45)
  },
  {
    departing_airport_id: 3,
    arrival_airport_id: 1,
    departure_date: Date.new(2024, 12, 22),
    departure_time: Time.new(2024, 12, 22, 6, 00),
    flight_length: 12,
    arrival_date: Date.new(2024, 12, 22),
    arrival_time: Time.new(2025, 12, 22, 1, 45)
  }
])