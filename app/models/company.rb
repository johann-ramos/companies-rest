class Company < ApplicationRecord
  has_many :boards
  has_many :owners, through: :boards
  validates :name, :address, :city, :country, :presence => true
end
