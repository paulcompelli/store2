class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery

  private

  protected

  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end

  # Returns the currently logged in user or nil if there isn't one
  def current_user               #dee
    return unless session[:user_id]
    @current_user ||= User.find_by_id(session[:user_id])
  end
  # Make current_user available in templates as a helper
  helper_method :current_user       #dee
  # Filter method to enforce a login requirement
  # Apply as a before_filter on any controller you want to protect
  def authenticate                    #dee
    logged_in? ? true :access_denied
  end
  # Predicate method to test for a logged in user
  def logged_in?                        #dee
    current_user.is_a? User
  end
  # Make logged_in? available in templates as a helper
  helper_method :logged_in?                 #dee

  def access_denied                         #dee
    redirect_to login_path, :notice => "Please log in to continue"
                                            # and return false
  end

  private                                      #dee put private below protected as in tut


  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

  helper_method :is_admin?       #dee
  def is_admin?
    if current_user and (current_user.admin == true)
      return true
    else
      access_denied
    end
  end

end