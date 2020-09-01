class CartsController < ApplicationController
  
  def index
    @carts = Cart.all
  end

  def show
    @cart = Carts.find(params[:id])
  end

  def new
  end

  def create
    @cart = Cart.create
  end

  def edit
  end

  def update
    @cart = Cart.find(params[:id])
    @cart.update
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end
end
