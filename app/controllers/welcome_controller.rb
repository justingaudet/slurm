class WelcomeController < ApplicationController
  def index

    # initialization values for realtime tracker
    @init_orders = Order.all.size
    @init_costs = Order.sum(:cost)
    @init_sales = Order.sum(:amount)
    @init_name = Order.order("created_at").last.name
    @init_num = Order.order("created_at").last.amount
    @init_city = Order.order("created_at").last.city
    @init_country = Order.order("created_at").last.country

    # count all the orders that are expected to arrive by today
    @orders_shipped = Order.where("will_ship_by <= ?", Date.today).count

  end
end
