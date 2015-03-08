# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Order.create!(name:'kelly', amount:'2', cost:'20')
Order.create!(name:'john', amount:'1', cost:'10')
Order.create!(name:'justin', amount:'64', cost:'640')
Order.create!(name:'samantha', amount:'1', cost:'10')
Order.create!(name:'emily', amount:'3', cost:'30')