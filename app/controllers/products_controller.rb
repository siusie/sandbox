class ProductsController < ApplicationController
  # Load all records from the database
  def index
          @products = Product.all
            end
  # Load one record from the database
  def show
            @product = Product.find(params[:id])
              end
end

