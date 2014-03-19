class OrdersController < ApplicationController

  def index
    @orders = Order.all
    # @paid ||= Order.paid
    # @cancelled ||=Order.cancelled
  end

  def show
    @order = Order.find(params[:id])
  end
end
