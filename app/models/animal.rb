class Animal < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  TYPES = ["Dog", "Cat", "Turtle", "Bird", "Iguana", "Hamster", "Horse", "Pig"].freeze
  SIZES = ["Small", "Medium", "Big", "Extra-Big"].freeze
  ENERGY = ["Low", "Medium", "High", "Hyper-Active"].freeze

  validates :animal_type, inclusion: { in: TYPES }, presence: true
  validates :size, inclusion: { in: SIZES }, presence: true
  validates :energy, inclusion: { in: ENERGY }, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
