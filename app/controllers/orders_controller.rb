class OrdersController < ApplicationController

  def index
    @pending ||= Order.pending
    @paid ||= Order.paid
    @cancelled ||=Order.cancelled
  end

  def show
    @order = Order.find(params[:id])
  end
end
