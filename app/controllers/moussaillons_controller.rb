class MoussaillonsController < ApplicationController

		def new

		@mouss = Moussaillon.new

	end

	def create

		@mouss = Moussaillon.create(mouss_params)
		redirect_to moussaillon_path(@mouss.id)

	end

	def show
		@mouss = Moussaillon.find(params[:id])
	end

	def edit

		@moussaillon = Moussaillon.find(params[:id])

	end

	def index
		@mouss = Moussaillon.all
	end

	def update

		@moussaillon = Moussaillon.find(params[:id])
		@moussaillon.update(mouss_params)
		redirect_to moussaillon_path

	end

	def mouss_params

		params.require(:moussaillon).permit(:first_name, :age)

	end

	def destroy

		@mouss = Moussaillon.find(params[:id])
		@mouss.destroy
		redirect_to moussaillon_path

	end

end
