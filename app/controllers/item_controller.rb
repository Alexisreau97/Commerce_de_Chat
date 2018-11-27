class ItemController < ApplicationController
    def show
        puts "Heyy Item show"
        @item = Item.find(params[:id])
    end

    def item_params
  params.require(:item).permit(:title, :description, :price, :header_image)
	end


	def edit
            @item = Item.find(params[:id])
	 end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path
    flash[:notice] = "Item edited"
  end

end
