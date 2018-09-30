class Person::ShowSerializer < PersonSerializer
  has_many :movies_as_actor
  has_many :movies_as_director
  has_many :movies_as_producer
end
