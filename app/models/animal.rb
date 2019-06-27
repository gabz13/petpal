class Animal < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  has_many :bookings, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  TYPES = ["Dog", "Cat", "Turtle", "Bird", "Iguana", "Hamster", "Horse", "Pig"].freeze
  SIZES = ["Small", "Medium", "Big", "Extra-Big"].freeze
  ENERGY = ["Low", "Medium", "High", "Hyper-Active"].freeze

  validates :animal_type, inclusion: { in: TYPES }, presence: true
  validates :size, inclusion: { in: SIZES }, presence: true
  validates :energy, inclusion: { in: ENERGY }, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true


  has_many :reviews, dependent: :destroy

  validates :location, presence: true

end
