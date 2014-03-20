class CartsController < ApplicationController

  def show
    @cart = Cart.find(params[:id])
  end

  def create
    @order = Order.new
    @order.save
    render :show
  end

end
