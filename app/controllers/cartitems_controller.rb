class CartitemsController < ApplicationController
    def new
        @cart_item = Cartitem.new(product_id: params[:products_id])
        @product_id = params[:products_id]
    end
    
    def create
        @cart_item = Cartitem.new(qty: params[:cartitem][:qty],product_id: params[:cartitem][:product_id],cart_id: session[:cart_id])
        if @cart_item.save
            redirect_to products_path
        else
            render new_cartitem_path
        end
    end
    
    def destroy
        product = Cartitem.find(params[:id])
        product.destroy
        redirect_to cart_path
    end
end
