class UsersController < ApplicationController

    def new
        user = User.create(username:)
    end

    private
    def user_params
            params.permit(:username, :password, )
    end

end
