class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
    render :index
  end
  def new
    @new_product = Product.new
    render :index
  end
  def create
    @new_product = Product.new(product_params)
    if @new_product.save
      # flash[:notice]="Attaboy!"
      redirect_to product_path(@new_product)
    else
      # flash[:alert]="You are bad and should feel bad."
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :country)
  end
end
