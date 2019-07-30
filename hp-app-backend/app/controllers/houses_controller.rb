class HousesController < ApplicationController

    def index
        houses = House.all
        render json: houses.to_json(:include => {
        :users => {:except => [:created_at, :updated_at]}
        })
    end
        
    def show
        house = House.find(params[:id])
        render json: house.to_json(:include => {
        :users => {:except => [:created_at, :updated_at]}})
    end

end
