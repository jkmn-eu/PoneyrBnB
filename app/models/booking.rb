class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :poney
end
