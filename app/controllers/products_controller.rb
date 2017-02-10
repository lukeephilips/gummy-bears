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
    @target = @new_product
    render :index
  end
  def create
    @new_product = Product.new(product_params)
    @target = @new_product

    if @new_product.save
      flash[:success]="Attaboy!"
      redirect_to products_path
    else
      # flash[:danger]= @new_product.errors.full_messages.first.to_s
      render :index
    end
  end
  def edit
    @edit_product = Product.find(params[:id])
    @target = @edit_product
    render :index
  end
  def update
    @edit_product = Product.find(params[:id])
    @target = @edit_product

    if @edit_product.update(product_params)
      flash[:success]="Attaboy!"
      redirect_to product_path(@edit_product)
    else
      # flash[:danger]=@edit_product.errors.full_messages.first.to_s
      render :index
    end
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :country, :image)
  end
end
