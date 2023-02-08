class Event < ApplicationRecord
  has_many :checkins
  has_many :users, through: :checkins

  validates :name, presence: true
  validates :date, presence: true
  validates :location, presence: true
end
