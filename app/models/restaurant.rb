class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_associated :reviews

  validates :category, acceptance: { accept: %w[chinese italian japanese french belgian] }, presence: true
  validates :name, :address, :phone_number, presence: true
end
