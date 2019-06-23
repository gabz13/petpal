class Animal < ApplicationRecord
  belongs_to :user

  TYPES = ["dog", "cat", "turtle", "bird", "iguana", "hamster", "horse"].freeze
  SIZES = ["small", "medium", "big", "extra-big"].freeze
  ENERGY = ["low", "medium", "high", "hyper-active"].freeze

  validates :animal_type, inclusion: { in: TYPES }, presence: true
  validates :size, inclusion: { in: SIZES }, presence: true
  validates :energy, inclusion: { in: ENERGY }, presence: true
  validates :name, presence: true
  validates :description, presence: true
end
