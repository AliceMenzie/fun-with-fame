class Review < ApplicationRecord
  belongs_to :experience
  belongs_to :user
end
