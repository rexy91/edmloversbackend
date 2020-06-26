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
        end
    end

    def show
        @user = User.find_by(id:params[:id])
        byebug
        render json: @user
    end

    def login  
        # login 
        @user = User.find_by(username:params[:username])
        if @user && @user.authenticate(params[:password])
            wristband = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: wristband}
        else
            render json:{error:'invalid username or password'}
        end
    end

    private
    def user_params
            params.permit(:username, :password)
    end
end

