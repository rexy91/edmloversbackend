class UsersController < ApplicationController

    def index
        
        @users = User.all
        render json: @users
    end

    def create
        # sign up
        @user = User.create(username:params[:username], password:params[:password])
        if @user
            render json:@user
            byebug
        end
    end

    def login  
        # login 
        byebug
        @user = User.find_by(params[:username])
    end

    private
    def user_params
            params.permit(:username, :password)
    end
end

