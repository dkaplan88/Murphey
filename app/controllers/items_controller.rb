class ItemsController < ApplicationController 
  
  def show 
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
    @category = Category.all
  end
  
  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to root_url, notice: "Item Added!" 
    else
      render new
    end
  end
  
end