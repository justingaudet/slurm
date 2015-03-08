require 'pusher'

Pusher.app_id = '110230'
Pusher.key = '63a00516bd7a894567e2'
Pusher.secret = 'fb24967344b1999a78e4'

class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    # add cost to the db defined by our price and shipping costs
    @price = CONSTANTS::PRICE
    @shipping = CONSTANTS::SHIPPING
    @order.cost = (order_params[:amount].to_i * @price.to_i + @shipping.to_i)

    respond_to do |format|
      if @order.save

        # successful order creation should render new page
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }

        # pusher event for realtime sales js
        Pusher['sales_channel'].trigger('order_num_event', {message: Order.all.size})
        Pusher['sales_channel'].trigger('order_cost_event', {message: Order.sum(:cost)})
        Pusher['sales_channel'].trigger('order_sale_event', {message: Order.sum(:amount)})

      else
        # else render error page
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :amount)
    end
end
