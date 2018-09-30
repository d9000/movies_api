class Person < ApplicationRecord
  # has_many :movie_roles
  has_many :movie_role_as_actor, -> { where(role: 'actor') }, class_name: 'MovieRole'
  has_many :movies_as_actor, through: :movie_role_as_actor, source: 'movie'
  has_many :movie_role_as_director, -> { where(role: 'director') }, class_name: 'MovieRole'
  has_many :movies_as_director, through: :movie_role_as_director, source: 'movie'
  has_many :movie_role_as_producer, -> { where(role: 'producer') }, class_name: 'MovieRole'
  has_many :movies_as_producer, through: :movie_role_as_producer, source: 'movie'
end
