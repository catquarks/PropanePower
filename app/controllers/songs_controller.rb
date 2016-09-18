class SongsController < ApplicationController

	def index
		render json: Song.all
	end

	def show
		render json: Song.find(params[:id])
	end

	def create
		song = Song.create(song_params)
		if song.save
			render json: song
		else
			render json: song.errors, status: 500
		end
	end

	private
		def song_params
			params.require(:song).permit(:title, :chart)
		end

end
