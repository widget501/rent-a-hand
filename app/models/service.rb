class Service < ApplicationRecord
  belongs_to :user
  # has_many_attached :photos
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
end
