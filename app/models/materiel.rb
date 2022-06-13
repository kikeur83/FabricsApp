class Materiel < ApplicationRecord
  has_many :user_materiels
  has_many :creation_materiels

  validates :name, presence: true
end
