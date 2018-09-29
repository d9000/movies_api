class PersonSerializer < ActiveModel::Serializer
  attributes :id, :last_name, :first_name, :aliases
end
