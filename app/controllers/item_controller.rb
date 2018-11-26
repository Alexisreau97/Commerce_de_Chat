class ItemController < ApplicationController
    def show
        puts "Heyy Item show"
        @item = @item.find(params[:id])
    end
end
