class CollaboratorsController < ApplicationController

	def index
		respond_to do |f|
			f.html { render :index }
			f.json { render json: Collaborator.all }
		end
	end

	def show
		respond_to do |f|
			f.html { render :index }
			f.json { render json: Collaborator.find(params[:id]) }
		end
	end

end
