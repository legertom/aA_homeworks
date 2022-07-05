# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


House.destroy_all
house1 = House.create(name: "123 main st")
house2  = House.create(name: "70 Lenox Road")

Dog.destroy_all
dog1 =  Dog.create(name: "Lorenzo", house_id: "1")
dog2 =  Dog.create(name: "Laverne", house_id: "2")
dog3 =  Dog.create(name: "Arnold", house_id: "1")

Toy.destroy_all
toy1 = Toy.create(name: "bone", color: "white", dog_id: "1" )
toy2 = Toy.create(name: "newspaper", color: "black and white", dog_id: "1" )
toy3 = Toy.create(name: "clown", color: "red", dog_id: "2" )
toy4 = Toy.create(name: "ball", color: "green", dog_id: "2" )
toy5 = Toy.create(name: "kong", color: "brown", dog_id: "1" )
