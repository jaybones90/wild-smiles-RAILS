class Service < ApplicationRecord
  validates :name, :description, :cost, :presence => true

  has_many :reviews


end
