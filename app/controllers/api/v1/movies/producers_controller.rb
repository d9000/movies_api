class API::V1::Movies::ProducersController < ApplicationController
  before_action :doorkeeper_authorize!, except: [:index]
  def index
    render json: set_movie.producers
  end

  def create
    if set_movie.producers << set_person
      head :ok
    else
      render json: { errors: @movie.errors }, status: 422
    end
  end

  def destroy
    movie = set_movie
    if movie.producers.delete(set_person)
      head 204
    else
      render json: { errors: movie.errors }, status: 422
    end
  end

  private

  def set_movie
    @movie ||= Movie.find(params[:movie_id])
  end

  def set_person
    @person ||= Person.find(params[:id])
  end
end
