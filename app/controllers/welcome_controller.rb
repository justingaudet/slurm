class WelcomeController < ApplicationController
  def index
    @init_orders = Order.all.size
    @init_costs = Order.sum(:cost)
    @init_sales = Order.sum(:amount)
  end
end
