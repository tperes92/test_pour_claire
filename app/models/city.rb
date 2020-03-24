class City < ApplicationRecord
  has_many :users
  has_many :projects

  validates :name, presence: true
  validates :zip_code, 
    presence: true,
    uniqueness: true,
    format: { with: /\A(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}\z/, message: "Veuillez renseigner un code postal français" }

end
