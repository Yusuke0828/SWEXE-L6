class CartsController < ApplicationController
    def show
        @cart = Cartitem.where(cart_id: params[:id])
    end
end
