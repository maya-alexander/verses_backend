
class Api::V1::UsersController < ApplicationController
before_action :set_user, except: [:new, :create, :index]
  def index
    users = User.all
  end

  def create
    @user = User.new(user_params)
    @user.password=(params[:password])

    if @user.save
      Cart.create!(member_id: @user.id)
      login!(@user)
      render json: @user
    else
      render json: @user.errors.full_messages, status: 401
    end

  end

  def show
    cart = @user.cart
    cart_items = cart.cart_items
    render json: { user: @user, cart: cart, cart_items: cart_items}
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
