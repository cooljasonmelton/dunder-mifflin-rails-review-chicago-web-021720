class DogsController < ApplicationController

    def index
        @dogs = Dog.all
        @popular_dogs = Dog.popular_dog_array
        @button = true
    end 

    def show
        @dog = Dog.find(params[:id])
    end 

    def update
        @button = false
        @dogs = Dog.all
        @popular_dogs = Dog.popular_dog_array
        render :index 
    end 

  

end
