class Entry < ApplicationRecord
  validates_uniqueness_of :email, scope: [:raffle_id, :email]
  belongs_to :raffle
end
