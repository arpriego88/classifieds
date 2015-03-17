class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path
    else
      render :new
    end 
  end

  def edit
    @products
  end

  def update
    @products
  end

  def destroy
    @products
  end

  private

  def product_params
    params.require(:product).permit(:category, :name, :price, :description)
  end
  
end
