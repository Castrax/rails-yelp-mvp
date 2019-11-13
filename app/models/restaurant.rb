class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone_number, format: { with: /\d[0-9]\)*\z/, message: "Your phone number is not valid" }
  validates :category, presence: true,
                       inclusion:
                            { in: %w[chinese italian japanese french belgian] }
end
