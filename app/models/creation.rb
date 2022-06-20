class Creation < ApplicationRecord
  has_many_attached :photos
  has_many :favoris, dependent: :destroy
  has_many :creation_materiels, dependent: :destroy
  acts_as_favoritable

  validates :name, presence: true
  validates :longueur, presence: true, numericality: true
  validates :largeur, presence: true, numericality: true
  validates :video_link, presence: true
  validates :patron_link, presence: true
  validates :tagline, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { in: 10..500 }
  validates :instruction, presence: true
end
