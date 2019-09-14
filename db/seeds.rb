# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

arek = User.create(reputation_score:2.12,name:"Arek", age:12,login:"test", password:"test", email:"test")

opinia = arek.opinions.create(verdict: true, reason: "test", result: false )
