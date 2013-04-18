class StaticPagesController < ApplicationController
  skip_before_filter :authorize
  def about
    @cart = current_cart
  end

  def contact
    @cart = current_cart
  end
end
