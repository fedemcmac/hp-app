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

        user = User.find_by(name: params[:name])
        if user 
            user.score = 0
            user.lives = 3
            user.save
        else
            house_id = House.assign_house.id
            user = User.create(name: params[:name], house_id: house_id, lives: 3, score: 0) 
        end
        
        render json: user
    end

    # private

    # def user_params
    #     params.require(:name).permit(:name)
    # end

end
