class Samurai < ApplicationRecord
  paginates_per 5
  belongs_to :clan

  scope :death, -> {where('died is NOT NULL')}
  scope :living, -> {where('died is NULL')}

  validates :name, presence: true
  validates :battles_number, presence: true
  validates :enrolled, presence: true
  validates :armor, inclusion: 0..1000

end