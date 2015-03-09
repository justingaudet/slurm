# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Order.create!(name:'Kelly', amount:'2', cost:'30', city:'Victoria', country:'Canada', will_ship_by: Date.today-8)
Order.create!(name:'John', amount:'1', cost:'20', city:'Victoria', country:'Canada', will_ship_by: Date.today-8)
Order.create!(name:'Justin', amount:'64', cost:'650', city:'Victoria', country:'Canada', will_ship_by: Date.today-8)
Order.create!(name:'Samantha', amount:'1', cost:'20', city:'Victoria', country:'Canada', will_ship_by: Date.today)
Order.create!(name:'Emily', amount:'3', cost:'40', city:'Victoria', country:'Canada', will_ship_by: Date.today)