class Api::V1::BurgersController < ApplicationController

  def index
    burgers = Hamburger.all
    render json: burgers, status: 200
  end

  def show
    burger = Hamburger.find(params[:id])
    if burger
      render json: burger, status: 200
    else 
      render json: { error: "Burger not found" }
    end
  end

  def create
    burger = Hamburger.new(
      name: params[:name],
      brand: params[:brand],
      price: params[:price],
      description: params[:description]
    )
    if burger.save
      render json: burger, status: 200
    else
      render json: { error: "Failed to create burger" }
    end
  end

  def update
    burger = Hamburger.find(params[:id])
    if burger.update(
      name: params[:name],
      brand: params[:brand],
      description: params[:description],
      price: params[:price]
      )
      render json: burger, status: 200
    else
      render json: { error: "Failed to update burger" }
    end
  end

  def destroy
    @burger = Hamburger.find(params[:id])
    if @burger
      @burger.destroy
      render json: { message: "Delete request complete" }, status: 200
    else 
      render json: { error: "Delete request not completed" }
    end
  end

  private 

  def brgr_params
    params.require(:hamburger).permit([
      :name,
      :brand,
      :price,
      :description
    ])
  end
  
end
