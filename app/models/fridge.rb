class Fridge < ApplicationRecord
  has_many :foods, dependent: :destroy
end
