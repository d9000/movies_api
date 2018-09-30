class Movie < ApplicationRecord
  has_many :actor_movie_role, -> { where(role: 'actor') }, class_name: 'MovieRole'
  has_many :casting, through: :actor_movie_role, source: 'person'
  has_many :director_movie_role, -> { where(role: 'director') }, class_name: 'MovieRole'
  has_many :directors, through: :director_movie_role, source: 'person'
  has_many :producers_movie_role, -> { where(role: 'producer') }, class_name: 'MovieRole'
  has_many :producers, through: :director_movie_role, source: 'person'
end
