class Movie::ShowSerializer < MovieSerializer
  attributes :casting
  has_many :casting
  has_many :directors
  has_many :producers
end
