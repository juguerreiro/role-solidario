class Donation < ApplicationRecord
  AMOUNTS = [10, 20, 30, 40, 50, 60]

  belongs_to :user
end
