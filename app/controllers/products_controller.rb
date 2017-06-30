class ProductsController < ApplicationController
  def index
    # @products = Product.all
    @products = Product.paginate(:page => params[:page], :per_page => 5)
    @most_reviewed_products = Product.most_reviewed_products
    @local_products = Product.local_products.paginate(:page => params[:local_page], :per_page => 3)
    @recently_added_products = Product.recently_added_products.paginate(:page => params[:recent_page], :per_page => 3)
  end

  def edit
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "New product added successfully!"
      redirect_to  product_path(@product)
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product updated successfully!"
      redirect_to  product_path(@product)
    else
      render :edit
    end
  end

private

  def product_params
    params.require(:product).permit(:name,:cost,:country)
  end

end
