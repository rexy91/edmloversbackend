class UsersController < ApplicationController

    def index
        
        @users = User.all
        render json: @users
    end

    def create
        byebug
        @user = User.create(username:params[:username], password:params[:password])
        if @user
            byebug
        end
    end

    def login

    end

    private
    def user_params
            params.permit(:username, :password)
    end
end

