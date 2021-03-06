class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
   @item = Item.create(
      cart_id: item_params[:cart],
      product_id: item_params[:product],
      quantity: item_params[:quantity],
      current_price: item_params[:current_price]
    )
    @cart = Cart.find(item_params[:cart].to_i)
    render :show
  end

  def update
    @item = Item.find(params[:id])
    @item.update(quantity: params[:item][:quantity])
    render :show
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    render :show
  end

 private

  def item_params
    params.require(:item).permit(:cart, :product, :quantity, :current_price)
  end
end
