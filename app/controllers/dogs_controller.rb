class DogsController < ApplicationController
	def index
	  @dogs = Dog.all
	end

	def show
		@dog = Dog.find params[:id]
	end

	def new
	  @dog = Dog.new
	end

	def create
		redirect_to Dog.create dog_params
	end

	def dog_params
		params.require(:dog).permit(:name, :age)
	end

end
