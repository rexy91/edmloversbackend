class UsersController < ApplicationController

    def index
        byebug
        @users = User.all
        render json: @users
    end

    def create
        byebug
    end

    private
    def user_params
            params.permit(:username, :password, )
    end

end
