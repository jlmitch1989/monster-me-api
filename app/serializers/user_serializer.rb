#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :artist
  has_many :creations
end
