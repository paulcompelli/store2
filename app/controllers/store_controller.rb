class StoreController < ApplicationController
  skip_before_filter :authorize, only: [:index,:show]
  def index
    @products = Product.all.sample(4)
    @cart = current_cart
  end
end
