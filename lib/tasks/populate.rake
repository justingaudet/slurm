namespace :db do
  desc "Add 20 randomized orders to the order database"
  task :populate => :environment do
    require "populator"
    require 'faker'

    Order.populate 20 do |ord|
      @some_num = Faker::Number.number(2).to_i

      ord.name          = Faker::Name.first_name
      ord.amount        = @some_num
      ord.cost          = @some_num * CONSTANTS::PRICE + CONSTANTS::SHIPPING
      ord.city          = Faker::Address.city
      ord.country       = Faker::Address.country
      ord.will_ship_by  = Date.today - Faker::Number.number(1).to_i.days
    end
  end
end