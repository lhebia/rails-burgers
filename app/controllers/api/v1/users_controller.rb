module Api
  module V1
    class UsersController < ApplicationController

      def new
      end

      def create
        user = User.new(username: params[:username], email: params[:email], password: params[:password])
        if (user.save)
          render json: { message: "Welcome!" }, status: 200
        else
          render json: { message: "Sorry, something wen't wrong." }
        end
      end

      private

      def user_params
        params.require(:user).permit(:username, :email, :password)
      end

    end
  end
end
