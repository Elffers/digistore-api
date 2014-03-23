class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def create
    @product = Product.create(product_params)
    render :show
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render :show
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    render :show
  end

  private

  def product_params
    params.require(:product).permit(:id, :name, :price, :description, :avatar, :image)
  end

end
