class MovieSerializer < ActiveModel::Serializer
  attributes :title, :rank, :director, :year
end
