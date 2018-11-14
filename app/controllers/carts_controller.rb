class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
