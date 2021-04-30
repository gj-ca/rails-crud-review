class Organizer < ApplicationRecord
  has_many :events, dependent: :destroy
  
  # validates_presence_of :email, :password
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 3 }
end
