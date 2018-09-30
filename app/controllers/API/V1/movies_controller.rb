class API::V1::MoviesController < ApplicationController
    before_action :doorkeeper_authorize!, except: [:index, :show]
    def index
        render json: Movie.all
    end
    def show
        render json: set_movie, serializer: Movie::ShowSerializer
    end
    def create
        movie = Movie.new(Movie_params)
        if movie.save
            render json: movie, serializer: Movie::ShowSerializer, status: 201
        else
            render json: { errors: Movie.errors }, status: 422
        end
    end
    def update
        movie = set_movie
        if movie.update(movie_params)
            render json: movie, serializer: Movie::ShowSerializer, status: 200
        else
            render json: { errors: movie.errors }, status: 422
        end
    end
    def destroy
        movie = set_movie 
        if movie.destroy
            head 204
        else
            render json: { errors: movie.errors }, status: 422
        end
    end
private
    def set_movie
        @movie ||= Movie.find params[:id]
    end
    def movie_params
        params.permit(:title, :release_year)
    end
end
