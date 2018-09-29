class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_year_in_roman
  def release_year_in_roman
    object.release_year.to_roman
  end
end
