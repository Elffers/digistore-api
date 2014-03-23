class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
    @items = @cart.items
  end

  def create
    @cart = Cart.new
    @cart.save
    render :show
  end
end
