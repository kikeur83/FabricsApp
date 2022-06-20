class User < ApplicationRecord
  has_many :favoris, dependent: :destroy
  has_many :user_materiels, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # acts_as_favoritor
    #  coment of the validations to debug the login

  # validates :first_name, presence: true
  # validates :last_name, presence: true
end
