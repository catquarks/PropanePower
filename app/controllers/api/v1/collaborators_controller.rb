module Api
	module V1
		class CollaboratorsController < ApplicationController

			def index
				render json: Collaborator.all
			end

			def show
				render json: Collaborator.find(params[:id])
			end

		end
	end
end