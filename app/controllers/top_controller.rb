class TopController < ApplicationController
    def main
        current_cart
        redirect_to products_path
    end
end
