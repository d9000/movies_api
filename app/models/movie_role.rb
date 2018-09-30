class MovieRole < ApplicationRecord
  belongs_to :movie
  belongs_to :person
  validates_presence_of :movie, :person
end
