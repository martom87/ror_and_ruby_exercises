class Clan < ApplicationRecord
  has_many :warriors, dependent: :destroy

end