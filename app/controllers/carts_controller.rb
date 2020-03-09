class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  def show

  end

  private

  def set_cart
    @cart = Cart.find_by(user_id: params[:id]) 
  end

  def cart_params
    params.require(:cart).permit(:user_id)
  end

end
