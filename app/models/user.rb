# User Model
class User < ActiveRecord::Base
  include Authentication
  has_many :creations, inverse_of: :user, foreign_key: 'user_id'
end
