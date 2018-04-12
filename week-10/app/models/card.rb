class Card < ApplicationRecord
  validates :job, length: { minimum: 5 }
end
