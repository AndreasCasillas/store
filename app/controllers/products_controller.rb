class ProductsController < ApplicationController
    
  
    def index
      if session[:cart].nil?
        session[:cart] = []
      end
      @products = Product.all
      @cart = session[:cart]
    end
  
    def buy 
      if session[:cart].nil?
        session[:cart] = []
      end
      product = Product.find(params[:id])
      session[:cart].append(product)
      redirect_to :root
    end

    def checkout
      @cart = session[:cart]
      session[:cart] = []
    end



    def show
      @products = Product.find(params[:id])
    end
  
    def new
      @products = Product.new
    end
  
    def create
      @products = Product.new(product_params)
  
      if @product.save
        redirect_to @product
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def edit
      @products = Product.find(params[:id])
    end
  
    def update
      @products = Product.find(params[:id])
  
      if @products.update(product_params)
        redirect_to @product
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      @products = Article.find(params[:id])
      @products.destroy
  
      redirect_to root_path, status: :see_other
    end
  
    private
      def product_params
        params.require(:product).permit(:title, :body, :status)
      end
  end
  