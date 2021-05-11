class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :celebrities
  has_many :reviews, dependent: :destroy
  has_one :booking, dependent: :destroy
  validates :price, :numericality => {:greater_than => 0, :less_than => 1_000_000}, presence: true 
  validates :duration, :location, :activity, :booking_id, presence: true
end
