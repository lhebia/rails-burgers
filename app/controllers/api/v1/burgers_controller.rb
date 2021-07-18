module Api
  module V1
    class BurgersController < ApplicationController
      before_action :set_burger, only: [:show, :update, :destroy]

      def index
        burgers = Hamburger.all
        render json: burgers, status: 200
      end

      def show
        if @burger
          render json: @burger, status: 200
        else 
          render json: { error: "Burger not found" }
        end
      end

      def create
        burger = Hamburger.new(burger_params)
        if burger.save
          render json: burger, status: 200
        else
          render json: { error: "Failed to create burger" }
        end
      end

      def update
        if @burger.update((burger_params))
          render json: @burger, status: 200
        else
          render json: { error: "Failed to update burger" }
        end
      end

      def destroy
        if @burger
          @burger.destroy
          render json: { message: "Delete request complete" }, status: 200
        else 
          render json: { error: "Delete request not completed" }
        end
      end

      private 

      def set_burger
        @burger = Hamburger.find(params[:id])
      end

      def burger_params
        params.require(:burger).permit(:name, :brand, :price, :description)
      end
      
    end
  end
end
