class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :rank, :year, :director
end
