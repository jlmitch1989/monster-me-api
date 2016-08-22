class CreationSerializer < ActiveModel::Serializer
  attributes :id, :title, :picture, :artist_name, :description
  belongs_to :user
end
