class ProductsController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]
  before_action :set_product, only: %i[ show edit update destroy ]  # extract shared code between actions and run it before the action
  # @product = Product.find(params[:id] is defined in three different methods: function to show one record, def edit one product, def update one product, and def destroy one product


  # Load all records from the database
  def index
    @products = Product.all
  end


  # Load one record from the database
  def show
  end

  # Create one
  def new
    @product = Product.new
  end
    
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  # Edit one  
  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product
      else
         render :edit, status: :unprocessable_entity
      end
    end

  def destroy
    @product.destroy
    redirect_to products_path
  end

    # inspect the params and ensure there is a key named :product with an array of parameters (:name) as the value.
    private
      def product_params
        params.expect(product: [ :name ])
      end

  private
    def set_product
      @product = Product.find(params[:id])
    end

end

