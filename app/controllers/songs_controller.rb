class SongsController < ApplicationController

	def index
		respond_to do |f|
			f.html { render :index }
			f.json { redirect_to api_v1_songs_path }
		end
	end

	def show
		respond_to do |f|
			song = Song.find(params[:id])
			f.html { render :show }
			f.json { redirect_to api_v1_song_path(song)  }
		end
	end

end
