class Donation < ApplicationRecord
  AMOUNTS = [10, 20, 30, 40, 50, 60]
  TYPES = ["Catão de crédio - Mensal", "Cartão de crédito - Único", "Pix - Único"]

  belongs_to :user
end
