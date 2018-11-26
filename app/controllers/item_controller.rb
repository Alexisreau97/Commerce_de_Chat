class ItemController < ApplicationController
    def show
        puts "Heyy Item show"
        @potin = @potin.find(params[:id])
    end
end
