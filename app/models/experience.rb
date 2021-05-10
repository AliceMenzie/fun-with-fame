class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :celebrities
  has_many :reviews
  has_one :booking
end
