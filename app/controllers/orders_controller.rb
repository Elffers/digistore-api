class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.create(
      cart_id: order_params[:cart],
      first_name: order_params[:first_name],
      last_name: order_params[:last_name],
      status: order_params[:status],
      email: order_params[:email],
      zip_code: order_params[:zip_code],
      cvv: order_params[:cvv],
      expiration: order_params[:expiration],
      total: order_params[:total]
    )
    render :show
  end

  private

  def order_params
    params.require(:order).permit(:total, :status, :cart, :first_name, :last_name, :email, :cvv, :expiration, :credit_card, :zip_code)
  end

end
