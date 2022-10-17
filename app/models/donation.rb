class Donation < ApplicationRecord
  attr_accessor :amount_options
  AMOUNTS = [10, 20, 30, 40, 50, 60]
  TYPES = ["Catão de crédio - Mensal", "Cartão de crédito - Único", "Pix - Único"]

  belongs_to :user

end
