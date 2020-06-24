# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SolarSystem.destroy_all
Star.destroy_all
Planet.destroy_all

s1 = SolarSystem.create(name: "sol1")
s1.create_star({name: "biglight", spectral_type: "O"})
s1.planets.create([{name: "first planet!", composition: "rocky", size: "small", rings: "true"},
{name: "second planet!", composition: "earth-like", size: "medium", rings: "true"},
{name: "third planet!", composition: "rocky", size: "large", rings: "true"},
{name: "fourth planet!", composition: "gaseous", size: "large", rings: "true"},
{name: "fifth planet!", composition: "rocky", size: "small", rings: "true"}
])

s2 = SolarSystem.create(name: "sol2")
s2.create_star({name: "smalllight", spectral_type: "M"})
s2.planets.create([{name: "first planet!", composition: "rocky", size: "small", rings: "true"},
{name: "second planet!", composition: "earth-like", size: "medium"},
{name: "third planet!", composition: "rocky", size: "large", rings: "true"},
{name: "fourth planet!", composition: "gaseous", size: "large", rings: "true"}
])

s3 = SolarSystem.create(name: "Scrantillian")
s3.create_star({name: "The Sun", spectral_type: "G"})
s3.planets.create([{name: "Mars-ish", composition: "rocky", size: "small"},
{name: "little Uranus", composition: "icy", size: "medium", rings: "true"},
{name: "Bigger Mars", composition: "rocky", size: "large", rings: "true"},
{name: "Not Earth", composition: "icy", size: "large", rings: "true"}
])