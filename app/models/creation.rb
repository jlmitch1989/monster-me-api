# creation model
class Creation < ActiveRecord::Base
  belongs_to :user, inverse_of: :creations
end
