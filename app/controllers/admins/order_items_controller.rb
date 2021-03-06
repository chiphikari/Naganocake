class Admins::OrderItemsController < ApplicationController

 before_action :authenticate_admin!

 def update
   @order = Order.find(params[:order_id])
   order_item = @order.order_items.find(params[:id])
   order_item.update(order_item_params)
   redirect_to admins_order_path(@order)
 end

 private

 def order_item_params
  params.require(:order_item).permit(:production_status)
 end

end
