class MenuesController < ApplicationController
  def index
    @item = Item.all
  end
  
  def new
    @item = Item.new
    @category = Category.all
  end

  def create
    @item = Item.create(params[:item])
    if @item.save?
      redirect_to root_url, notice: "Item Added!"
    else
      render new
    end
  end
    
end
