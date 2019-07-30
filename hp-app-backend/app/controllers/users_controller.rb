class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.find_or_create(params[:name])
        user.score = 0
        user.save()

        return json: user
    end
end
