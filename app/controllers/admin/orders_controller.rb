module Admin

	class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :redirect_if_cart_is_empty, only: :new
  before_action :set_order, only: [:show, :edit, :update, :destroy]


		def index

			    @orders = Order.all

		end

		def new

		end


		def create

		end


	end

end