# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Order.create!(name:'Kelly', amount:'2', cost:'20', city:'Victoria', country:'Canada')
Order.create!(name:'John', amount:'1', cost:'10', city:'Victoria', country:'Canada')
Order.create!(name:'Justin', amount:'64', cost:'640', city:'Victoria', country:'Canada')
Order.create!(name:'Samantha', amount:'1', cost:'10', city:'Victoria', country:'Canada')
Order.create!(name:'Emily', amount:'3', cost:'30', city:'Victoria', country:'Canada')