class Booking < ApplicationRecord
  belongs_to :user
  has_many :experiences, dependent: :destroy 
  validates :user_id, :date, presence: true
  validates :total_price, :numericality => {:greater_than => 0, :less_than => 1_000_000}
end
