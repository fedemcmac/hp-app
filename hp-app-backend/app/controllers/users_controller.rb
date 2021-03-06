class UsersController < ApplicationController

    def index
        users = User.all.where("high_score > ?", 0).order(high_score: :desc).limit(10)
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

    def update
        user = User.find_by(id: params[:id])
        user.high_score = params[:high_score]
        user.save
        render json: user
    end
end
