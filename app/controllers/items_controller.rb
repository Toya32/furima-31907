class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  private
  def item_params
    params.require(:item).permit(:name, :user, :description, :price, :category_id, :state_id, :delivery_fee_id, :area_id, :shipping_id, :image, )
  end
end
