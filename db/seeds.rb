# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

arek = User.create(reputation_score:2.12,name:"Arek", age:12,login:"test", password:"test", email:"test")

parek = User.create(reputation_score:22.12,name:"parek", age:122,login:"dst", password:"tds", email:"tdada")

opinia = arek.opinions.create(verdict: true, reason: "test", result: false)

opin = parek.opinions.create(verdict: true, reason: "test", result: false)

twiter = Tweet.create(tw_id:"test", trustscore:3.14, category:"test", verified:"false", verdict:"false", tweet_url:"test", html_content:"test", data_posted:"test", tweet_username:"test", likes_delta:7)
