class BirdsController < ApplicationController

    def index
        @birds = Bird.all 

        render json: @birds
    end

    def update
        @bird = Bird.find(params[:id])
        @bird.update(color: params[:color])
        render json: @bird
    end

    def show 
        @bird = Bird.find(params[:id])
        render json: @bird
    end

    def create
        @bird = Bird.create(
            name: params[:name],
            color: params[:color]
        )

        render json: @bird
    end

    def destroy
        @bird = Bird.find(params[:id])
        @bird.destroy
        render json: "this bird has been deleted"
    end
end
