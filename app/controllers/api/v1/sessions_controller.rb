module Api
  module V1
    class SessionsController < ApplicationController
      
      def create
        user = User.find_by(email: params[:email].downcase)
      end

    end
  end
end
