class WelcomeController < ApplicationController
  def index
    @total_sales = Order.all.size
  end
end
