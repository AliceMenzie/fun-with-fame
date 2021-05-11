class Celebrity < ApplicationRecord
    has_many :experiences
    validates :name, presence: true
end
