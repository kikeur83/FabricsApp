class UserMateriel < ApplicationRecord
  belongs_to :user
  belongs_to :materiel
end
