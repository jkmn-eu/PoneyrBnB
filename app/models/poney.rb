class Poney < ApplicationRecord
  belongs_to :user
  has_many :bookings
<<<<<<< HEAD
  has_one_attached :photo
=======

  validates :name, presence: true
  validates :name, length: { minimum: 2, maximum: 20, too_long: "20 characters is the maximum allowed" }
  validates :name, format: { with: /\A[A-Za-z0-9.& ]*\z/, message: "only allows letters" }

  validates :price_per_diem, presence: true
  validates :price_per_diem, numericality: { only_integer: true }
  validates :price_per_diem, numericality: { greater_than: 0 }

  validates :color, presence: true
  validates :color, format: { with: /\A[a-zA-Z]+\z/ }
  validates :color, length: { minimum: 2, maximum: 10 }

  validates :height, presence: true
  validates :height, numericality: { less_than_or_equal: 100 }
  validates :height, numericality: { only_integer: true }
  validates :height, format: { with: /\A\d+\Z/ }

  validates :special_power, presence: true
  validates :special_power, length: { maximum: 20 }

  validates :description, presence: true
  validates :description, length: { maximum: 50 }


>>>>>>> 69f7ad6923958a48691bef69658bfdbef67b027d
end
