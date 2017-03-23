class Owner < ApplicationRecord
  has_many :boards
  has_many :companies, through: :boards
  validates :name, :presence => true
end
