class API::V1::People::MoviesAsActorController < ApplicationController
    before_action :doorkeeper_authorize!, except: [:index]
    def index
        render json: set_person.movies_as_actor
    end
    def create
        if set_person.movies_as_actor << set_movie
            head :ok
        else
            render json: { errors: @person.errors }, status: 422
        end
    end
    def destroy
        person = set_person
        if person.movies_as_actor.delete(set_movie)
            head 204
        else
            render json: { errors: person.errors }, status: 422
        end
    end
    def set_person
        @person ||= Person.find(params[:person_id])
    end
    def set_movie
        @movie ||= Movie.find(params[:id])
    end
end