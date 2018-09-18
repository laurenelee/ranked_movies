class MovieDetailSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :picture, :stars, :synopsis, :rank
end
