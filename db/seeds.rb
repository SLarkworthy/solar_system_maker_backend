# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Star.create(name: "biglight", spectral_type: "O", solar_system_id: 1)
Star.create(name: "smalllight", spectral_type: "M", solar_system_id: 4)


s1 = SolarSystem.create(name: "sol1")
s2 = SolarSystem.create(name: "sol2")
