class Review < ApplicationRecord
  belongs_to :experience
  belongs_to :user
  validates :experience_id, :user_id, :descriptoin, :title, presence: true
  validates :score, :numericality => {:greater_than => 0, :less_than => 10}, presence: true
end
