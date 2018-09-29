class API::V1::PeopleController < ApplicationController
    before_action :doorkeeper_authorize!, except: [:index, :show]
    def index
        render json: Person.all
    end
    def show
        render json: set_person, serializer: Person::ShowSerializer
    end
    def create
        person = Person.new(person_params)
        if person.save
            render json: person, serializer: Person::ShowSerializer, status: 201
        else
            render json: { errors: person.errors }, status: 422
        end
    end
    def update
        person = set_person
        if person.update(person_params)
            render json: person, serializer: Person::ShowSerializer, status: 200
        else
            render json: { errors: person.errors }, status: 422
        end
    end
    def destroy
        person = set_person 
        person.destroy
        head 204
    end
    private
    def set_person
        @person ||= Person.find(params[:id])
    end
    def person_params
        params.permit(:last_name, :first_name, :aliases)
    end
end
