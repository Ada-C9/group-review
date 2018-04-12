class Card < ApplicationRecord
  validates :job, length: { minimum: 5 }
  validates :name, uniqueness: true

end
