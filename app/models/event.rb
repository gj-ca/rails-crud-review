class Event < ApplicationRecord
  belongs_to :address
  belongs_to :organizer

  validates :name, presence: true
  validates :time, presence: true
  validates :date, presence: true
end
