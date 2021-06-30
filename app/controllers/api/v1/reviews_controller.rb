module Api
  module V1
    class ReviewsController < ApplicationController

      def index
        reviews = Review.find_by(hamburger_id: params[:hamburger_id])
        render json: reviews, status: 200
      end

      def create
        review = Review.new(review_params)

        if review.save
          render json: review, status: 200
        else
          render json: { error: review.errors.messages }, status: 422
        end
      end

      def show
        review = Review.find(params[:id])
        if review
          render json: review, status: 200
        else
          render json: { error: "Review not found" }
        end
      end

      def update
        review = Review.find(params[:id])

        if review.update(review_params)
          render json: review, status: 200
        else
          render json: { error: "Review request not complete" }
        end
      end

      def destroy
        review = Review.find(params[:id])

        if review
          review.destroy
          render json: { message: "Delete request complete" }
        else 
          render json: { error: "Delete request not completed" }
        end
      end

      private

      def review_params
        params.require(:review).permit(:title, :description, :score, :hamburger_id)
      end
      
    end
  end
end
