class Game < ActiveRecord::Base
  belongs_to :player
  has_one :vote, dependent: :destroy
end
